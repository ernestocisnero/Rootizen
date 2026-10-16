//
//  NotificationView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/15/26.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.scenePhase) private var scenePhase
    
    @AppStorage("reminderEnabled") private var reminderEnabled = false
    @AppStorage("reminderMinutes") private var reminderMinutes = 18 * 60
    @State private var systemAllowed = false
    
    private var timeBinding: Binding<Date> {
        Binding(
            get: { Calendar.current.date(bySettingHour: reminderMinutes / 60,
                                         minute: reminderMinutes % 60, second: 0, of: .now) ?? .now },
            set: { new in
                let c = Calendar.current.dateComponents([.hour, .minute], from: new)
                reminderMinutes = (c.hour ?? 18) * 60 + (c.minute ?? 0)
            }
        )
    }
    
    private var toggleBinding: Binding<Bool> {
        Binding(get: { reminderEnabled && systemAllowed },
                set: { on in Task { await setReminder(on) } })
    }
    
    
    var body: some View {
        List{
            
            // Shows banned when notifications are off
            Section{
                if !systemAllowed{
                    Button{
                        NotificationManager.shared.openNotificationSettings()
                    } label:{
                        HStack {
                            Image(systemName: "bell.slash.fill")
                            Text("Notifications are off — tap to enable")
                                .font(.footnote)
                            Spacer()
                            Image(systemName: "chevron.right")
                                .font(.caption2)
                        }
                        .foregroundStyle(.white)
                        .padding(.horizontal)
                        .padding(.vertical, 10)
                        .background(AppColor.speak)
                    }
                }
            }
            .listRowInsets(EdgeInsets())
            .listRowBackground(AppColor.speak)
            
            
            
            Section{
                Toggle(isOn: toggleBinding) {
                    Label("Daily Reminder", systemImage: "bell")
                }
            }
            
            if reminderEnabled && systemAllowed{
                Section{
                    DatePicker("Select Time", selection: timeBinding, displayedComponents: .hourAndMinute)
                }
            }
            
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.inline)
        .task { await refresh() }
        .onChange(of: scenePhase) { _, phase in if phase == .active { Task { await refresh() } } }
        .onChange(of: reminderMinutes) { _, _ in
            if reminderEnabled && systemAllowed { reschedule() }
        }
    }
    
    private func setReminder(_ wantsOn: Bool) async {
        let manager = NotificationManager.shared
        guard wantsOn else { reminderEnabled = false; manager.cancelReminder(); return }
        
        switch await manager.permission() {
        case .allowed: break
        case .notAsked: guard await manager.requestPermission() else { return }
        case .denied: manager.openNotificationSettings(); return
        }
        systemAllowed = true
        reminderEnabled = true
        reschedule()
    }
    
    private func reschedule() {
        NotificationManager.shared.dispatchNotification(hour: reminderMinutes / 60,
                                                        minute: reminderMinutes % 60)
    }
    
    private func refresh() async {
        systemAllowed = await NotificationManager.shared.permission() == .allowed
    }
    
}

#Preview {
    NotificationView()
}
