//
//  RepresentativesView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/16/26.
//

import SwiftUI

struct RepresentativesView: View {
    @Environment(\.dismiss) private var dismiss
    @Environment(RepresentativesService.self) private var repsService
    @Environment(AppState.self) private var appState
    
    var body: some View {
        Group {
            VStack{
                if repsService.isLoading {
                    //ProgressView("Loading your representatives...")
                    VStack(spacing: 0) {
                            ForEach(0..<10, id: \.self) { _ in RepRowSkeleton() }
                        }
                        .shimmer()
                        .transition(.opacity)
                    
                } else if let error = repsService.errorMessage {
                    VStack(spacing: 12) {
                        HStack{
                            Spacer()
                            DismissBtn(backgroundColor: AppColor.accentMuted, shadowBorderColor: AppColor.accent, action: { dismiss() })
                        }
                        
                        Spacer()
                        
                        Image(systemName: "exclamationmark.triangle")
                            .font(.largeTitle)
                            .foregroundStyle(.secondary)
                        Text(error)
                            .foregroundStyle(.secondary)
                            .primaryTitle()
                            .multilineTextAlignment(.center)
                        
                        Button("Try Again") {
                            Task { await repsService.fetchRepresentatives(forZip: appState.zipCode) }
                        }
                        
                        Spacer()
                    }
                    .padding()
                } else if let result = repsService.currentResult {
                    VStack{
                        ScrollView {
                            VStack(alignment: .leading, spacing: 24) {
                                
                                RepsScreenHeader(location: result.location,state: result.state)
                                
                                sectionHeader("National Leaders")
                                VStack(spacing: 12) {
                                    ForEach(result.nationalLeaders) { leader in
                                        LeaderRow(leader: leader)
                                    }
                                }
                                 
                                if !result.stateLeaders.isEmpty {
                                    sectionHeader("\(result.state) State Leaders")
                                    VStack(spacing: 12) {
                                        ForEach(result.stateLeaders) { leader in
                                            LeaderRow(leader: leader)
                                        }
                                    
                                    }
                                }
                                sectionHeader("Your Representatives")
                                VStack(spacing: 12) {
                                    ForEach(result.representatives) { rep in
                                        RepresentativeRow(rep: rep)
                                    }
                                }
                            }
                        }
                        .scrollIndicators(.hidden)
                        .transition(.opacity.combined(with: .move(edge: .top)))
                    }
                }
            }
            .padding(.horizontal)
            
        }
        .task {
            await repsService.fetchRepresentatives(forZip: appState.zipCode)
        }
        .onChange(of: appState.zipCode) { _, newZip in
            Task {
                await repsService.fetchRepresentatives(forZip: newZip)
            }
        }
        .sensoryFeedback(trigger: repsService.isLoading) { oldValue, newValue in
            newValue == false ? .success : nil   // only fires when loading finishes
        }
        
    }
    
    private func sectionHeader(_ title: String) -> some View {
        Text(title)
            .font(.title3.bold())
    }
}

#Preview {
    RepresentativesView()
        .environment(RepresentativesService())
        .environment(AppState())
}
