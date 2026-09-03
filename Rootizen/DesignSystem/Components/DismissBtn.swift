//
//  DissmisBtn.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/3/26.
//

import SwiftUI

struct DismissBtn: View {
    let backgroundColor: Color
    let shadowBorderColor: Color
    let action: () -> Void
    
    var body: some View {
        Button{
            action()
            
        }label:{
            VStack {
                Text("X")
                    .primaryTitle()
            }
            .frame(maxWidth: 30, maxHeight: 30)
            .background(backgroundColor)
            .clipShape(RoundedRectangle(cornerRadius: 10, style: .continuous))
            .overlay {
                RoundedRectangle(cornerRadius: 10, style: .continuous)
                    .stroke(Color.black.opacity(0.08), lineWidth: 1)
            }
            .shadow(
                color: shadowBorderColor,
                radius: 0,
                x: 0,
                y: 5
            )
            
        }
    }
}

#Preview {
    DismissBtn(backgroundColor: AppColor.accentMuted, shadowBorderColor: AppColor.accent, action: {})
}
