//
//  FruitModel.swift
//  Fructus
//
//  Created by Faleela on 18/09/24.
//

import SwiftUI

struct Fruit: Identifiable {
    var id =  UUID()
    var title: String
    var headline: String
    var description: String
    var image: String
    var gradientColors: [Color]
    var nutrition: [String]
}
