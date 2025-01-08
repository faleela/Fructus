//
//  FruitDetailView.swift
//  Fructus
//
//  Created by Faleela on 19/09/24.
//

import SwiftUI

struct FruitDetailView: View {
    
    var fruit: Fruit
    var body: some View {
        
        NavigationStack {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(alignment: .center,spacing: 20) {
                    // HEADER
                    FruitHeaderView(fruit: fruit)
                    VStack(alignment: .leading, spacing: 20){
                        // TITLE
                        Text(fruit.title)
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundStyle(Color(fruit.gradientColors[1]))
                        

                        // HEADLINE
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        // NUTRIENTS
                        FruitNutrientsView(fruit: fruit)

                        
                        //SUBHEADER
                        
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundStyle(Color(fruit.gradientColors[1]))
                        
                        
                        //DESCRIPTION
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                        
                        //LINK
                        LinkView()
                            .padding(.top, 10)
                            .padding(.bottom, 40)
                        
                    } // : VSTACK
                    .padding(.horizontal, 20)
                    .frame(maxWidth: 400, alignment: .center)
                }
            } // : SCROLLVIEW
            .ignoresSafeArea(edges: .top)
        } // : NAVIGATIONVIEW
        
    }
}

#Preview {
    FruitDetailView(fruit: fruitData[1])
}
