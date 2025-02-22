//
//  FruitRowView.swift
//  Fructus
//
//  Created by Faleela on 19/09/24.
//

import SwiftUI

struct FruitRowView: View {
    
    // MARK: - PROPERTIES
    var fruit: Fruit
    // MARK: - BODY
    var body: some View {
        HStack {
            Image(fruit.image)
                .renderingMode(.original)
                .resizable()
                .scaledToFit()
                .frame(width: 80, height: 80)
                .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.3), radius: 3,x: 3,y: 3)
                .background(
                    LinearGradient(gradient: Gradient(colors: fruit.gradientColors), startPoint: .top, endPoint: .bottom)
                )
                .cornerRadius(8)
            
            VStack(alignment: .leading, spacing: 5){
                Text(fruit.title)
                    .font(.title2)
                    .fontWeight(.bold)
                Text(fruit.headline)
                    .font(.caption)
                    .foregroundColor(.secondary)
            }
        }
    }
}

#Preview {
    FruitRowView(fruit: fruitData[0])
        .previewLayout(.sizeThatFits)
        .padding()
}
