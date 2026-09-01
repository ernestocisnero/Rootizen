//
//  ProfileView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

enum Options: String, Identifiable{
    case getPro
    case questionVersion
    case language
    case notification
    case faqs
    case rateApp

    var id: String { rawValue }
}


import SwiftUI

struct ProfileView: View {
    
    @Environment(AppState.self) private var appState
    @State private var whichOption: Options?
    
    let streakCount: Int = 4
    let totalXP: Int = 100
    let coursesCount: Int = 10
    
    var body: some View {
        
        ScrollView {
            
            VStack(spacing: 24){
                
                //User Name
                UserInitialHeaders()
                
                //User Stats
                RowStats(items: [
                    StatItem(value: "\(streakCount)", label: "day streak"),
                    StatItem(value: "\(totalXP)", label: "xp points"),
                    //StatItem(value: "\(coursesCount)", label: "courses")
                ])

                VStack(spacing: 18){
                    
                    ProfileRow(icon: "crown", title: "Get Pro") {
                        whichOption = .getPro
                    }
                    
                    ProfileRow(icon: "book.pages", title: "Questions Version") {
                        whichOption = .questionVersion
                    }
                    
                    
                    ProfileRow(icon: "a.square", title: "Language") {
                        whichOption = .language
                    }
                    
                    ProfileRow(icon: "bell", title: "Notifications") {
                        whichOption = .notification
                    }
                   
                    ProfileRow(icon: "questionmark.app", title: "FAQs") {
                        whichOption = .faqs
                    }
                    
                    ProfileRow(icon: "star", title: "Rate this App") {
                        whichOption = .rateApp
                    }
                    
                    #if DEBUG
                    ProfileRow(icon: "arrow.counterclockwise", title: "Reset onboarding", tint: AppColor.error) {
                        appState.resetOnboarding()
                    }
                    #endif
                    
                    
                }
            }
            
            
        }
        .scrollIndicators(.hidden)
        .sheet(item: $whichOption){ sheet in
            switch sheet {
                
            case .getPro:
                Text("Get Pro")
            case .questionVersion:
                Text("Questions Version")
            case .language:
                Text("Language")
            case .notification:
                Text("Notifications")
            case .faqs:
                Text("FAQs")
            case .rateApp:
                Text("Rate App")
            }
        }
    }
}

#Preview {
    ProfileView()
        .padding()
        .environment(AppState())
}
