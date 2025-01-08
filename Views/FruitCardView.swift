//
//  FruitCardView.swift
//  Fructus
//
//  Created by Faleela on 10/09/24.
//

import SwiftUI

struct FruitCardView: View {
    
    // MARK: - PROPERTIES
    @State var  isAnimating: Bool = false
    var fruit: Fruit
    //MARK: - BODY
    var body: some View {
        
        ZStack {
            VStack(spacing:20){
              
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 8)
                .scaleEffect(isAnimating ? 0.6 : 1.0)
                
                Text(fruit.title)
                    .fontWeight(.heavy)
                    .foregroundStyle(Color.white)
                    .font(.largeTitle)
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity:0.15), radius:8 ,x: 2, y:2)
                
                Text(fruit.headline)
                    .foregroundStyle(Color.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,20)
                    .frame(maxWidth: 480)
                
                StartButtonView()
            }
        }
        .onAppear {
            withAnimation(.easeInOut(duration: 0.5)){
                isAnimating = true
            }
        }
        .frame(minWidth: 0,maxWidth: .infinity, minHeight: 0,maxHeight: .infinity)
        .background(LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom))
        .cornerRadius(20)
        .padding(.horizontal, 20)
        
       
    }
}

//MARK: - PREVIEW
#Preview {
    FruitCardView(fruit: fruitData[2])
        .previewLayout(.fixed(width: 320, height: .infinity))
}
