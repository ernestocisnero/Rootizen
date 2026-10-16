//
//  NotificationManager.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/15/26.
//

enum ReminderPermission { case allowed, notAsked, denied }

import SwiftUI
import UserNotifications

class NotificationManager{
    
    static let shared = NotificationManager()
    let identifier = "rootizen-daily-reminder"
    
    func checkForPermission(){
        let notificationCenter = UNUserNotificationCenter.current()
        
        notificationCenter.getNotificationSettings{ settings in
            
            switch settings.authorizationStatus {
            case .notDetermined:
                notificationCenter.requestAuthorization(options: [.alert, .badge, .sound]){ granted, error in
                    if granted{
                        self.dispatchNotification()
                    
                    }else {
                        print("Error \(error?.localizedDescription ?? "")")
                      
                    }
                }
            case .denied:
                return
            case .authorized:
                self.dispatchNotification()
               
            default: return
            }
            
        }
    }
    
    func dispatchNotification(hour: Int = 18, minute: Int = 00){
        
        let notificationCenter = UNUserNotificationCenter.current()

        // Fill the content first
        let content = UNMutableNotificationContent()
        content.title = "Daily Reminder"
        content.body = "Daily practice increase you confidence towards citizenship exam."
        content.sound = .default

        // Fill the time
        var dateComponents = DateComponents(calendar: Calendar.current, timeZone: TimeZone.current)
        dateComponents.hour = hour
        dateComponents.minute = minute

        // Trigger and request last
        let trigger = UNCalendarNotificationTrigger(dateMatching: dateComponents, repeats: true)
        let request = UNNotificationRequest(identifier: identifier, content: content, trigger: trigger)

        cancelReminder()
        notificationCenter.add(request)
    }
    
    func permission() async -> ReminderPermission {
        switch await UNUserNotificationCenter.current().notificationSettings().authorizationStatus {
        case .authorized, .provisional: return .allowed
        case .notDetermined: return .notAsked
        default: return .denied
        }
    }
    func requestPermission() async -> Bool {
        (try? await UNUserNotificationCenter.current().requestAuthorization(options: [.alert, .sound])) ?? false
    }
    func cancelReminder() {
        UNUserNotificationCenter.current().removePendingNotificationRequests(withIdentifiers: [identifier])
    }
    
    func openNotificationSettings() {
        if let url = URL(string: UIApplication.openNotificationSettingsURLString) {
            UIApplication.shared.open(url)
        }
    }
    
    
}
