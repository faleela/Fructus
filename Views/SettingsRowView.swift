//
//  SettingsRowView.swift
//  Fructus
//
//  Created by Faleela on 02/10/24.
//

import SwiftUI

struct SettingsRowView: View {
    
    var name: String
    var content: String? = nil
    var linklabel: String? = nil
    var destination:String? = nil
    
    var body: some View {
        VStack {
            Divider()
                .padding(.vertical, 4)
            HStack{
                Text(name)
                    .foregroundStyle(Color.gray)
                Spacer()
                if (content != nil) {
                    Text(content!)
                } else if(linklabel != nil && destination != nil) {
                    Link(destination: URL(string: "https://\(destination!)")!, label: {
                        Text(linklabel!)
                    })
                    Image(systemName: "arrow.up.right.square")
                        .foregroundColor(.pink)
                }
                else {
                    EmptyView()
                }
            }
        }
    }
}

#Preview {
    SettingsRowView(name: "Developer", content: "John Jane")
        .previewLayout(.fixed(width: 375, height: 80))
        .padding()
  
}
