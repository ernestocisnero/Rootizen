//
//  ProfileView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/21/26.
//

import SwiftUI
import StoreKit

enum ProfileDestination: String, Identifiable, Hashable {
    case questionVersion
    case language
    case notification
    case faqs
    case questionsCount
    case share
    
    var id: String { rawValue }
}

struct ProfileView: View {
    
    @Environment(AppState.self) private var appState
    @Environment(UserProgress.self) private var userProgress
    @Environment(\.requestReview) private var requestReview
    
    @State private var showingPaywall = false
    @State private var soundEnabled = SoundManager.shared.isEnabled
    
    let isAppPlus: Bool = false
    
    var totalXP: Int {
        userProgress.userXPoints
    }
    
    var body: some View {
        List {
            Section {
                RowStats(items: [
                    StatItem(value: "\(totalXP)", label: "XP Earned", imageRow: "bolt", itemColor: AppColor.leagueColor(for: .gold)),
                    StatItem(value: "4", label: "Day streak", imageRow: "flame", itemColor: AppColor.leagueColor(for: .gold))
                ])
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
            }
            .listSectionSeparator(.hidden)
            
            Section("Preferences") {
                
                Button {
                    showingPaywall = true
                } label: {
                    Label("Get Rootizen Plus", systemImage: "star.hexagon")
                    
                    Spacer()
                    
                    Image(systemName: "arrow.up.forward")
                        .font(.caption)
                        .foregroundStyle(.tertiary)
                }
                .buttonStyle(.plain)
                
                NavigationLink(value: ProfileDestination.questionVersion) {
                    Label("Questions version", systemImage: "doc.text")
                }
                
                NavigationLink(value: ProfileDestination.language) {
                    Label("Language", systemImage: "character.bubble")
                }
                NavigationLink(value: ProfileDestination.notification) {
                    Label("Notifications", systemImage: "bell")
                }
                
                Toggle(isOn: $soundEnabled) {
                    Label("Sound effects", systemImage: "speaker.wave.2")
                }
                .onChange(of: soundEnabled) { _, newValue in
                    SoundManager.shared.isEnabled = newValue
                }
                
                // MARK: -- If app plus version is paid, this option becomes available.
                if isAppPlus{
                    NavigationLink(value: ProfileDestination.questionsCount) {
                        Label("Questions count", systemImage: "number")
                    }
                }
            }
            
            Section("Support") {
                
                NavigationLink(value: ProfileDestination.share) {
                    Label("Share with friends", systemImage: "heart")
                }
                
                Button {
                    requestReview()
                } label: {
                    Label("Rate this app", systemImage: "star")
                }
                .buttonStyle(.plain)
                
                NavigationLink(value: ProfileDestination.faqs) {
                    Label("FAQs", systemImage: "questionmark.circle")
                }
                
            }
            
            Section("Legal"){
                Link(destination: URL(string: "https://ernestocisnero.vercel.app")!) {
                    HStack {
                        
                        Image(systemName: "document.badge.gearshape")
                        Text("Terms and Privacy policy")
                            .foregroundStyle(AppColor.primaryText)
                        
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .foregroundStyle(AppColor.secondaryText)
                            .font(.caption)
                            
                    }
                }
 
                
            }
            
            
            
            
#if DEBUG
            Section {
                Button(role: .destructive) {
                    appState.resetOnboarding()
                } label: {
                    Label("Reset onboarding", systemImage: "arrow.counterclockwise")
                }
            }
#endif
        }
        .listStyle(.insetGrouped)
        .navigationDestination(for: ProfileDestination.self) { destination in
            switch destination {
            case .questionVersion:
                Text("Questions Version")
            case .language:
                Text("Language")
            case .notification:
                Text("Notifications")
            case .faqs:
                Text("FAQs")
            case .questionsCount:
                Text("Questions Count")
            case .share:
                Text("Share with friend")
            }
        }
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
        }
    }
}

#Preview {
    NavigationStack {
        ProfileView()
            .environment(AppState())
            .environment(UserProgress())
    }
}
