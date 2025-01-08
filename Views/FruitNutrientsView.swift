//
//  FruitNutrientsView.swift
//  Fructus
//
//  Created by Faleela on 27/09/24.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK: - PROPERTIES
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    var body: some View {
        GroupBox() {
            DisclosureGroup("Nutritional Value per 100g") {
                ForEach(0 ..< nutrients.count, id: \.self) { item in
                    Divider().padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName:"info.circle")
                            Text(nutrients[item])
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment((.trailing))
                    }
                }
            }
        }//: BOX
    }
}

#Preview {
    FruitNutrientsView(fruit: fruitData[1])
        .previewLayout(.fixed(width: 375, height: 480))
        .padding()
}
