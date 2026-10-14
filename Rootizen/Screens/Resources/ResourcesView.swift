//
//  ResourcesView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/23/26.
//

import SwiftUI

enum ResourceDestination: String, Identifiable, Hashable {
    case haveYouEver
    case vocabulary
    case anthem
    case pledge
    
    var id: String { rawValue }
}

struct ResourcesView: View {
    @Environment(SpeechSynthesisService.self) private var speechService
    
    var body: some View {
        List {
            Section("Study Materials") {
                
                NavigationLink(value: ResourceDestination.haveYouEver) {
                    Label("Have You Ever Questions", systemImage: "bubble.left.and.bubble.right")
                }
                
                NavigationLink(value: ResourceDestination.vocabulary) {
                    Label("Vocabulary", systemImage: "textformat.abc")
                }
            }
            
            Section("Extras") {
                NavigationLink(value: ResourceDestination.anthem) {
                    Label("National Anthem", systemImage: "music.note")
                }
                
                NavigationLink(value: ResourceDestination.pledge) {
                    Label("Pledge of Allegiance", systemImage: "flag")
                }
            }
            
            Section("External Resources") {
                Link(destination: URL(string: "https://www.uscis.gov")!) {
                    HStack {
                        Image(systemName: "link")
                        
                        Text("USCIS.gov")
                            .foregroundStyle(AppColor.primaryText)
                        Spacer()
                        Image(systemName: "arrow.up.right")
                            .font(.caption)
                            .foregroundStyle(AppColor.secondaryText)
                    }
                }
                
                
                Link(destination: URL(string: "https://my.uscis.gov/prep/test/civics")!) {
                    HStack {
                        Image(systemName: "link")
                        
                        Text("Civics Practice Test")
                            .foregroundStyle(AppColor.primaryText)
                        
                        Spacer()
                        
                        Image(systemName: "arrow.up.right")
                            .font(.caption)
                            .foregroundStyle(AppColor.secondaryText)
                    }
                }
                
            }
        }
        .listStyle(.insetGrouped)
        .navigationTitle("Resources")
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: ResourceDestination.self) { destination in
            switch destination {
            case .haveYouEver:
                HaveYouEverQuestionsView(questions: haveYouEverQuestions)
            case .vocabulary:
                VocabularyView()
            case .anthem:
                CivicPassageView(passage: .anthem, isPlaying: speechService.isSpeaking){
                    speechService.isSpeaking ? speechService.stop(): speechService.speak(CivicPassage.anthem.english)
                }
                .onDisappear { speechService.stop() }
            case .pledge:
                CivicPassageView(passage: .pledge, isPlaying: speechService.isSpeaking){
                    speechService.isSpeaking ? speechService.stop(): speechService.speak(CivicPassage.pledge.english)
                }
                .onDisappear { speechService.stop() }
            }
        }
    }
}

#Preview {
    NavigationStack {
        ResourcesView()
            .environment(SpeechSynthesisService())
    }
}
