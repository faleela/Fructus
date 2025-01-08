//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by Faleela on 02/10/24.
//

import SwiftUI

struct SettingsLabelView: View {
    
    var labeltxt: String
    var labelImg: String
    var body: some View {
        HStack {
            Text(labeltxt.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImg)
        }
        
    }
}

#Preview {
    SettingsLabelView(labeltxt: "Fructus", labelImg: "info.circle")
        .previewLayout(.sizeThatFits)
        .padding()
}
