//
//  UserInitialHeaders.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

struct UserInitialHeaders: View {
    
    let userName: String
    
    var body: some View {
        
        VStack{
            HStack(spacing: 24){
                Text("EC")
                    .foregroundStyle(AppColor.secondaryText)
                    .primaryTitle()
                
            }
            .frame(width: 80, height: 80)
            .bold()
            .background(AppColor.success)
            .clipShape(Circle())
            .shadow(
                color: AppColor.successBorder,
                radius: 0,
                x: 0,
                y: 5
            )
            
            Text(userName)
                .primaryTitle()
                .padding()
            
        }
    }
}

#Preview {
    UserInitialHeaders(userName: "Ernesto Cisnero")
}
