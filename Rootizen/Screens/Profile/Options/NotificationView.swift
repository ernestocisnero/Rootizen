//
//  NotificationView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/15/26.
//

import SwiftUI

struct NotificationView: View {
    @Environment(\.scenePhase) private var scenePhase
    @State private var notificationsAuthorized: Bool = false
    @State private var selectedTime: Date = .now
    
    
    var body: some View {
        List{
            
            // Shows banned when notifications are off
            if !notificationsAuthorized{
                Button{
                    handleBannerNotificationTap()
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
                    .background(Color.orange)
                }
            }
            
            
            Section(){
                Toggle(isOn: $notificationsAuthorized) {
                    Label("Daily Reminder", systemImage: "bell")
                }
            }
            
            if notificationsAuthorized{
                Section{
                    DatePicker("Select Time", selection: $selectedTime, displayedComponents: .hourAndMinute)
                }
            }

        }
        .listStyle(.insetGrouped)
        .navigationTitle("Notifications")
        .navigationBarTitleDisplayMode(.inline)
        .onAppear{
            Task{
                let setting = await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
                
                if setting == .authorized{
                    notificationsAuthorized = true
                }else{
                    notificationsAuthorized = false
                }
                
            }
        }
        .onDisappear{
            Task{
                let components = Calendar.current.dateComponents([.hour, .minute], from: selectedTime)
                let hour = components.hour ?? 18 + 12
                let minute = components.minute ?? 00
                NotificationManager.shared.dispatchNotification(hour: hour, minute: minute )
            }
            
        }
        .onChange(of: scenePhase) { _,newPhase in
            if newPhase == .active {
                NotificationManager.shared.checkForPermission()
            }
        }
    }
    
    func handleBannerNotificationTap(){
        Task{
            let setting = await UNUserNotificationCenter.current().notificationSettings().authorizationStatus
            
            if setting == .notDetermined{
                NotificationManager.shared.checkForPermission()
            }else{
                NotificationManager.shared.openNotificationSettings()
            }
        }
    }
    
}

#Preview {
    NotificationView()
}
