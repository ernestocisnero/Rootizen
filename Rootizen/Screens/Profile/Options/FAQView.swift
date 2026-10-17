//
//  FAQView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 10/16/26.
//

import SwiftUI

struct FAQ: Identifiable {
    let id: String
    let question: LocalizedStringResource
    let answer: LocalizedStringResource
}

struct FAQView: View {
    var body: some View {
        List {
            Section {
                ForEach(FAQ.all) { faq in
                    DisclosureGroup {
                        Text(faq.answer)
                            .bodyText(AppColor.secondaryText)
                            .lineSpacing(4)
                            .padding(.vertical, 4)
                    } label: {
                        Text(faq.question)
                            .bodyText()
                    }
                }
            }

            Section {
                Link(destination: URL(string: "mailto:support@rootizen.app")!) {
                    Label("Contact support", systemImage: "envelope")
                }
            } footer: {
                Text("Still have a question? We read every message.")
            }
        }
        .navigationTitle("FAQs")
        .navigationBarTitleDisplayMode(.inline)
    }
}

extension FAQ {
    static let all: [FAQ] = [
        FAQ(
            id: "official",
            question: "Is Rootizen an official USCIS app?",
            answer: "No. Rootizen is an independent study app. It is not affiliated with, endorsed by, or sponsored by USCIS or any government agency. Always confirm the latest requirements at uscis.gov."
        ),
        FAQ(
            id: "version",
            question: "Which test version should I study?",
            answer: "It depends on when you filed your N-400. If you filed on or after October 20, 2025, you take the 2025 test: 128 questions in the bank, up to 20 asked, and 12 correct to pass. If you filed earlier, you take the 2008 test: 100 questions, 10 asked, and 6 correct to pass. Choose yours in Profile > Preferences. Not sure? Check your USCIS notice."
        ),
        FAQ(
            id: "english",
            question: "Will my interview be in English?",
            answer: "For most applicants, yes. That's why Rootizen shows Spanish as a study aid, and why Reading & Writing helps you practice in English. Some applicants qualify for exemptions based on age and years as a permanent resident. Check with USCIS to see if you do."
        ),
        FAQ(
            id: "changing",
            question: "Some answers change. How do I stay current?",
            answer: "A few answers depend on who is in office or where you live, like your senators and your governor. Use Meet your representatives with your ZIP code, and check uscis.gov before your interview for the latest."
        ),
        FAQ(
            id: "plus",
            question: "What does Plus include, and how do I restore it?",
            answer: "Plus is a one time purchase with no subscription. It unlocks unlimited quizzes and flashcards, Reading & Writing practice, listening, and accuracy by category. New phone or reinstalled the app? Open Profile and tap Restore Purchases."
        ),
        FAQ(
            id: "privacy",
            question: "Is my information private?",
            answer: "You don't need an account. Your progress is saved on your device, and your ZIP code is only used to find your representatives. Rootizen collects anonymous usage statistics, such as which features are used, to help us improve the app. This data isn't linked to your name, zip code or identity."
        )
    ]
}

#Preview {
    NavigationStack { FAQView() }
}

