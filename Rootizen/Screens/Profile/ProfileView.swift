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
    case progress
    
    var id: String { rawValue }
}

struct ProfileView: View {
    
    @Environment(AppState.self) private var appState
    @Environment(\.requestReview) private var requestReview
    
    @State private var showingPaywall = false
    @State private var soundEnabled = SoundManager.shared.isEnabled
    
    let isAppPlus: Bool = false
    
    var totalQuizTaken: Int {
        appState.progress?.totalQuizTaken ?? 0
    }
    
    var totalFlashcardTaken: Int {
        appState.progress?.totalFlashcardTaken ?? 0
    }
    
    var body: some View {
        List {
            Section {
                RowStats(items: [
                    StatItem(value: "\(totalQuizTaken)", label: "Quiz Session", imageRow: "book", itemColor: AppColor.leagueColor(for: .gold)),
                    StatItem(value: "\(totalFlashcardTaken)", label: "Flashcards Sessions", imageRow: "lanyardcard", itemColor: AppColor.leagueColor(for: .diamond))
                    
                ])
                .listRowInsets(EdgeInsets())
                .listRowBackground(Color.clear)
            }
            .listSectionSeparator(.hidden)
            
            Section{
                NavigationLink(value: ProfileDestination.progress) {
                    Label("Your Progress", systemImage: "chart.line.uptrend.xyaxis")
                }
            }
            
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
            case .progress:
                Text("Your Progress")
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
            
    }
}
