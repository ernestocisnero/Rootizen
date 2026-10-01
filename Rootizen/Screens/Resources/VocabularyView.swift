//
//  VocabularyView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/27/26.
//

import SwiftUI

struct VocabularyView: View {
    @State private var selectedType: VocabularyType = .reading

    private var categories: [VocabularyCategory] {
        Vocabulary.categories(for: selectedType)
    }

    var body: some View {
        ScrollView {
            VStack(spacing: 20) {
                Picker("Vocabulary Type", selection: $selectedType) {
                    ForEach(VocabularyType.allCases) { type in
                        Text(type.rawValue).tag(type)
                    }
                }
                .pickerStyle(.segmented)
                .padding(.horizontal)
                .padding(.top, 8)

                ForEach(categories) { category in
                    VocabularyCategoryCard(category: category)
                        .padding(.horizontal)
                }
            }
            .padding(.bottom, 24)
        }
        .navigationTitle("Vocabulary")
        .navigationBarTitleDisplayMode(.large)
    }
}

private struct VocabularyCategoryCard: View {
    let category: VocabularyCategory

    var body: some View {
        VStack(alignment: .leading, spacing: 12) {
            Text(category.name)
                .label()

            FlowLayout(spacing: 8) {
                ForEach(category.words, id: \.self) { word in
                    VocabularyChip(word: word)
                }
            }
        }
        .padding(16)
        .frame(maxWidth: .infinity, alignment: .leading)
        .background(AppColor.surface, in: RoundedRectangle(cornerRadius: 16, style: .continuous))
    }
}

private struct VocabularyChip: View {
    let word: String

    var body: some View {
        Text(word)
            .font(.subheadline.weight(.medium))
            .foregroundStyle(.primary)
            .padding(.horizontal, 12)
            .padding(.vertical, 7)
            .background(AppColor.background, in: Capsule())
            .overlay(
                Capsule().stroke(AppColor.border, lineWidth: 0.5)
            )
    }
}

#Preview {
    NavigationStack {
        VocabularyView()
    }
}

