//
//  ResourcesView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/23/26.
//

import SwiftUI

enum ResourceDestination: String, Identifiable, Hashable {
    case readingWriting
    case haveYouEver
    case vocabulary
    case anthem
    case pledge

    var id: String { rawValue }
}

struct ResourcesView: View {

    @State private var showingVideo = false

    var body: some View {
        List {
            Section("Study Materials") {
                NavigationLink(value: ResourceDestination.readingWriting) {
                    Label("Reading & Writing", systemImage: "text.book.closed")
                }

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

            Section {
                Button {
                    showingVideo = true
                } label: {
                    Label("Naturalization Interview Example", systemImage: "play.rectangle")
                }
                .buttonStyle(.plain)
            } header: {
                Text("USCIS Naturalization Example")
            } footer: {
                Text("Official USCIS walkthrough video")
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
        .navigationDestination(for: ResourceDestination.self) { destination in
            switch destination {
            case .readingWriting:
                Text("Reading & Writing")
            case .haveYouEver:
                Text("Have You Ever Questions")
            case .vocabulary:
                Text("Vocabulary")
            case .anthem:
                Text("National Anthem")
            case .pledge:
                Text("Pledge of Allegiance")
            }
        }
        .sheet(isPresented: $showingVideo) {
            Text("Naturalization Interview Video Player")
        }
    }
}

#Preview {
    NavigationStack {
        ResourcesView()
    }
}
