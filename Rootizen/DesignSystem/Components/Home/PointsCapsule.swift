//
//  ExpPointsCapsule.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

enum CapsuleType {
    case streak
    case xpPoints
}


struct PointsCapsule: View {
    @State private var extendCapsule: Bool = false
    @State private var closeTask: Task<Void, Never>?
    
    let capsuleType: CapsuleType
    let points: Int
    let textPoints: String
    
    var backgroundBe: Color {
        capsuleType == .streak
        ? AppColor.errorMuted
        :AppColor.accentMuted
    }
    
    var foregroundBe: Color {
        capsuleType == .streak
        ? AppColor.streak
        :AppColor.accent
    }
    
    var body: some View {
        
        HStack(spacing: 10){
            Image(systemName: capsuleType == .streak ? "flame" : "bolt")
                .foregroundStyle(.white)
                .padding(8)
                .background(foregroundBe)
                .clipShape(Circle())
            
            if extendCapsule{
                HStack{
                    Text(textPoints)
                        .foregroundStyle(foregroundBe)
                        .primaryTitle()
                }
            }
            
            Text("\(points)")
                .foregroundStyle(foregroundBe)
                .primaryTitle()
            
            
        }
        .padding(8)
        .padding(.horizontal, 8)
        .background(backgroundBe)
        .clipShape(Capsule())
        .animation(.easeInOut(duration: 0.5), value: extendCapsule)
        .onTapGesture {
            closeTask?.cancel()
            extendCapsule.toggle()
            
            if extendCapsule {
                closeTask = Task {
                    try? await Task.sleep(for: .seconds(5))
                    guard !Task.isCancelled else { return }
                    extendCapsule = false
                }
            }
        }
        
    }
}

#Preview {
    PointsCapsule(capsuleType: .xpPoints, points: 10, textPoints: "XP Points")
}
