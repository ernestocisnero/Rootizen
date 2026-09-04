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
    @State private var soundEnabled = SoundManager.shared.isEnabled
    
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
                ])
                
                VStack(spacing: 18){
                    PremiumCard( action: { whichOption = .getPro } )
                }
                
                VStack(spacing: 16) {
                    ProfileSection(
                        title: "Preferences",
                        rows: [
                            ProfileRowItem(icon: "doc.text", title: "Questions version", action: {
                                whichOption = .questionVersion
                            }),
                            ProfileRowItem(icon: "character.bubble", title: "Language", action: {
                                whichOption = .language
                            }),
                            ProfileRowItem(icon: "bell", title: "Notifications", action: {
                                whichOption = .notification
                            })
                        ]
                    ){
                        ProfileToggleRow(icon: "speaker.wave.2", title: "Sound effects", isOn: $soundEnabled)
                            .onChange(of: soundEnabled) { _, newValue in
                                SoundManager.shared.isEnabled = newValue
                            }
                    }
                    
                    ProfileSection(
                        title: "Support",
                        rows: [
                            ProfileRowItem(icon: "questionmark.circle", title: "FAQs", action: {
                                whichOption = .faqs
                            }),
                            ProfileRowItem(icon: "star", title: "Rate this app", action: {
                                whichOption = .rateApp
                            })
                        ]
                    )
#if DEBUG
                    
                    ProfileSection(
                        rows: [
                            ProfileRowItem(icon: "arrow.counterclockwise", title: "Reset onboarding", tint: AppColor.error, action: { appState.resetOnboarding() })
                        ]
                    )
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
