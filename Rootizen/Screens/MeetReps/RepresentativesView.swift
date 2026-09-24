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
    @State private var editZipCode: Bool = false
    @State private var isWaving: Bool = false
    
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
                            DismissBtn(backgroundColor: AppColor.info, shadowBorderColor: AppColor.secondaryBackground, action: { dismiss() })
                        }
                        
                        Spacer()
                        VStack(spacing: 10){
                            Image(systemName: "mail.and.text.magnifyingglass")
                                .resizable()
                                .frame(width: 40, height: 40)
                                .foregroundStyle(AppColor.secondaryText)
                                .padding()
                                .background(AppColor.secondaryBackground, in: Circle())

                            Text(error)
                                .multilineTextAlignment(.center)
                                .foregroundStyle(AppColor.secondaryText)
                            
                            HStack(spacing: 6){
                                Image(systemName: "mappin")
                                    .foregroundStyle(AppColor.error)
                                Text("Zip code: \(appState.zipCode)")
                                    .foregroundStyle(AppColor.secondaryText)
                            }
                            .padding(.horizontal)
                            .padding(.vertical, 8)
                            .background(AppColor.secondaryBackground, in: RoundedRectangle(cornerRadius: 10))
                        }
                        
                        Spacer()
                        
                        VStack(spacing: 15){
                            
                            PrimaryButton(title: "Try a different zip code", color: AppColor.info, action: {
                                editZipCode = true
                            })
                        }
                        
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
        .sheet(isPresented: $editZipCode){
            ZipPicker()
                .environment(appState)
                .presentationDetents([.fraction(0.3)])
                .presentationDragIndicator(.visible)
                .presentationBackground(.white)
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
            .bodyText()
    }
}

#Preview {
    RepresentativesView()
        .environment(RepresentativesService())
        .environment(AppState())
}
