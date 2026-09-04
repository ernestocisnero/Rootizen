//
//  UserInitialHeaders.swift
//  Rootizen
//
//  Created by Ernesto Cisnero on 8/26/26.
//

import SwiftUI

struct UserInitialHeaders: View {
    
    var body: some View {
        
        VStack{
            HStack(spacing: 24){
                Text("EC")
                    .foregroundStyle(AppColor.primaryText)
                    .primaryTitle()
                
            }
            .frame(width: 80, height: 80)
            .bold()
            .background(AppColor.success)
            .clipShape(Circle())
            
            Text("Rootizen")
                .primaryTitle()
                .padding()
            
        }
    }
}

#Preview {
    UserInitialHeaders()
}
