//
//  OnboardingView.swift
//  Fructus
//
//  Created by Faleela on 18/09/24.
//

import SwiftUI

struct OnboardingView: View {
    var fruits : [Fruit] = fruitData
    
    var body: some View {
        TabView {
            
            ForEach(fruits[0...5]){ item in
                FruitCardView(fruit: item)
            }
           
        }
        .padding(.vertical, 20)
        .tabViewStyle(.page)
    
    }
}

#Preview {
    OnboardingView(fruits: fruitData)
}
