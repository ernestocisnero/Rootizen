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
    case share
    case progress
    
    var id: String { rawValue }
}

enum sharemessage: String{
    case english = "Hey! I'm using Rootizen! 🇺🇸 to practice civics questions. Test your knowledge, and build confidence at your own pace. Download Rootizen and take the next step toward becoming a U.S. citizen. Share it with friends and family who are preparing, too!"
    
    case spanish = "Hey estoy usando Rootizen para practicar las preguntas de educación cívica, pon a prueba tus conocimientos y gana confianza a tu propio ritmo. Descarga Rootizen y da el siguiente paso hacia tu ciudadanía estadounidense. ¡Compártela con amigos y familiares que también se estén preparando!"
}

struct ProfileView: View {
    
    @Environment(AppState.self) private var appState
    @Environment(\.requestReview) private var requestReview
    @Environment(PurchaseManager.self) private var purchaseManager
    
    @State private var showingPaywall = false
    @State private var soundEnabled = SoundManager.shared.isEnabled
    @State private var isRestoring = false
    @State private var showConfirmation = false
    
    let isAppPlus: Bool = false
    
    var body: some View {
        List {
            Section("Rootizen"){
                
                NavigationLink(value: ProfileDestination.progress) {
                    Label("My Progress", systemImage: "chart.line.uptrend.xyaxis")
                }
                
                //MARK: -- Purchase button
                Button {
                    showingPaywall = true
                } label: {
                    HStack{
                        Label("Get Rootizen Plus", systemImage: "star.hexagon")
                            .foregroundStyle(AppColor.leagueColor(for: .gold))
                        Spacer()
                        
                        if purchaseManager.isPremiumUnlocked{
                            Text("Active")
                                .bodyText(AppColor.success)
                                .padding(.horizontal)
                                .padding(.vertical, 8)
                                .background(AppColor.success.muted(0.1), in: Capsule())
                        }
                        
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    
                    
                }
                .buttonStyle(.plain)
                .disabled(purchaseManager.isPremiumUnlocked)
                
                //MARK: -- Restore Purchase button
                Button {
                    
                    Task {
                        isRestoring = true
                        await purchaseManager.restorePurchases()
                        isRestoring = false
                        showConfirmation = true
                    }
                    
                } label: {
                    Label("Restore your Rootizen Plus", systemImage: "dollarsign.arrow.trianglehead.counterclockwise.rotate.90")
                    
                    Spacer()
                    
                    
                }
                .buttonStyle(.plain)
                .disabled(isRestoring)
                .alert(
                    purchaseManager.isPremiumUnlocked ? "Rootizen Plus purchases restored" : "No Rootizen Plus to restore",
                    isPresented: $showConfirmation
                ) {
                    Button("OK", role: .cancel) { }
                } message: {
                    Text(
                        purchaseManager.isPremiumUnlocked
                        ? "Your Rootizen Plus has been restored."
                        : "No previous purchase for Rootizen Plus was found for this Apple ID."
                    )
                }
                
            }
            
            Section("Preferences") {
                
                NavigationLink(value: ProfileDestination.questionVersion) {
                    
                    HStack{
                        Label("Questions version", systemImage: "doc.text")
                        Spacer()
                        HStack{
                            if (appState.questionVersion == .v2008){
                                Text("Version 2008")
                                    .label()
                            }else{
                                Text("Version 2025")
                                    .label()
                            }
                        }.padding(.horizontal)
                        
                    }
                    
                }
                
                NavigationLink(value: ProfileDestination.language) {
                    HStack{
                        Label("Language", systemImage: "character.bubble")
                        Spacer()
                        HStack{
                            if (appState.appLanguage == .spanish){
                                Text("Español")
                                    .label()
                            }else{
                                Text("English")
                                    .label()
                            }
                        }.padding(.horizontal)
                    }
                    
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
                
            }
            
            Section("Support") {
                
                ShareLink(
                    item: URL(string: "https://apps.apple.com/app/idXXXXXXXXXX")!,
                    subject: Text("Rootizen"),
                    message: appState.appLanguage == .spanish ? Text(sharemessage.spanish.rawValue) : Text(sharemessage.english.rawValue),
                    preview: SharePreview("Share Rootizen with friends", image: "rootizen-plus-paywall")
                ) {
                    Label {
                        Text("Share Rootizen with friends")
                            .foregroundStyle(AppColor.primaryText)
                    } icon: {
                        Image(systemName: "square.and.arrow.up")
                    }
                        
                }
                
                
                
                Button {
                    requestReview()
                } label: {
                    HStack{
                        Label("Rate this app", systemImage: "star")
                    }
                    .frame(maxWidth: .infinity, alignment: .leading)
                    .contentShape(Rectangle())
                    
                }
                .buttonStyle(.plain)
                
            }
            
            Section("Legal"){
                NavigationLink(value: ProfileDestination.faqs) {
                    Label("FAQs", systemImage: "questionmark.circle")
                }
                
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
        .navigationTitle("Profile")
        .navigationBarTitleDisplayMode(.inline)
        .navigationDestination(for: ProfileDestination.self) { destination in
            switch destination {
            case .questionVersion:
                QuestionVersionView()
                    .environment(appState)
            case .language:
                SelectLanguageView()
                    .environment(appState)
            case .notification:
                Text("Notifications")
            case .faqs:
                Text("FAQs")
            case .share:
                Text("Share with friend")
            case .progress:
                UserProgressView()
                    .environment(appState)
                    .environment(purchaseManager)
            }
        }
        .sheet(isPresented: $showingPaywall) {
            PaywallView()
                .presentationDetents([.large])
                .padding()
                .presentationDragIndicator(.visible)
                .background(AppColor.background)
        }
    }
}

#Preview {
    NavigationStack {
        ProfileView()
            .environment(AppState())
            .environment(PurchaseManager())
    }
}
