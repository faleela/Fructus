//
//  FruitHeaderView.swift
//  Fructus
//
//  Created by Faleela on 19/09/24.
//

import SwiftUI

struct FruitHeaderView: View {
    var fruit: Fruit
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        ZStack {
            LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .topLeading, endPoint: .bottomTrailing)
            
            Image(fruit.image)
                .resizable()
                .scaledToFill()
                .shadow(color:Color(red: 0, green: 0, blue: 0,opacity: 0.15), radius: 8, x:6, y:8)
                .padding(.vertical,20)
                .scaleEffect(isAnimating ? 1.0 : 0.6)
            
        }  //: ZSTACK
        .frame(height: 440)
        .onAppear(){
            withAnimation(.easeOut(duration: 0.5)) {
                isAnimating = true
            }
        }
    }
    
}

#Preview {
    FruitHeaderView(fruit: fruitData[1])
        .previewLayout(.fixed(width: 375, height: 440))
}
