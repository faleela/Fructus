//
//  ContentView.swift
//  Fructus
//
//  Created by Faleela on 09/09/24.
//

import SwiftUI

struct ContentView: View {
    
    // MARK: - PROPERTIES
    var fruits: [Fruit] = fruitData
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        NavigationView{
            List(fruits) { item in
                NavigationLink(destination: FruitDetailView(fruit: item)) {
                    FruitRowView(fruit: item)
                        .padding(.vertical, 4)
                }
            }
            .navigationTitle("Fruits")
            .toolbar{
                ToolbarItem(placement: .topBarTrailing) {
                    Button {
                        isShowingSettings = true
                    } label: {
                        Image(systemName: "slider.horizontal.3")
                    } //: Button
                    .sheet(isPresented: $isShowingSettings) {
                        SettingsView()
                    }

                }
            }
        }
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

#Preview {
    ContentView(fruits:fruitData)
}
