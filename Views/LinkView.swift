//
//  LinkView.swift
//  Fructus
//
//  Created by Faleela on 19/09/24.
//

import SwiftUI

struct LinkView: View {
    var body: some View {
        GroupBox() {
            HStack {
                Text("Content Source")
                Spacer()
                Link("Wikipedia", destination: URL(string:"https://www.wikipedia.com")!)
                Image(systemName:"arrow.up.right.square")
            }
            .font(.footnote)
        }
    }
}

#Preview {
    LinkView()
        .previewLayout(.sizeThatFits)
        .padding()
}
