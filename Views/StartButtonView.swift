//
//  StartButtonView.swift
//  Fructus
//
//  Created by Faleela on 12/09/24.
//

import SwiftUI

struct StartButtonView: View {
    
    // MARK: - Properties
    @AppStorage("isOnboarding") var isOnboarding : Bool?
    
    // MARK: - Body
    var body: some View {
        Button(action: {
            print("Exit the onboarding")
         isOnboarding = false
            
        }, label: {
            
            HStack(spacing: 8){
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large)
                
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 10)
        })
        .accentColor(Color.white)
        .background(
            Capsule()
                .strokeBorder(Color.white,lineWidth: 1.25)
            )
    }
}

#Preview {
    StartButtonView()
        .previewLayout(.sizeThatFits)
}
