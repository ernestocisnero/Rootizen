//
//  SplashView.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 9/10/26.
//

import SwiftUI

struct SplashView: View {
    let onFinished: ()-> Void
    @State private var textScale: CGFloat = 1.0
    @State private var circleScale: CGFloat = 0.001
    @State private var showNextScreen = false
    @State private var textOpacity: Double = 1.0

    var body: some View {
        GeometryReader { geo in
            let diagonal = sqrt(pow(geo.size.width, 2) + pow(geo.size.height, 2))
            let circleDiameter: CGFloat = 40 // starting size, tweak to taste
            let targetScale = diagonal / circleDiameter

            ZStack {
                Color(AppColor.success)

                Text("Rootizen")
                    .font(.system(size: 80, weight: .bold))
                    .foregroundStyle(.white)
                    .scaleEffect(textScale)
                    .opacity(textOpacity)
  
                Circle()
                    .fill(AppColor.secondaryBackground)
                    .frame(width: circleDiameter, height: circleDiameter)
                    .scaleEffect(circleScale)
                    .position(x: geo.size.width / 2, y: geo.size.height / 2)

            }
            .onAppear {
                withAnimation(.easeOut(duration: 0.6)) {
                    textScale = 0.9
                }
                withAnimation(.easeInOut(duration: 0.8).delay(0.6)) {
                    circleScale = targetScale
                }
                withAnimation(.easeIn(duration: 0.2).delay(0.8)) {
                    textOpacity = 0
                }
                DispatchQueue.main.asyncAfter(deadline: .now() + 1.6) {
                    onFinished()
                }
            }
        }
        .ignoresSafeArea()
    }
}

#Preview {
    SplashView(onFinished: {})
}
