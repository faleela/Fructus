//
//  SettingsView.swift
//  Fructus
//
//  Created by Faleela on 02/10/24.
//

import SwiftUI

struct SettingsView: View {
    
    @Environment(\.dismiss) var dismiss
    @AppStorage("isOnboarding") var isOnboarding : Bool = false
    var body: some View {
        
        NavigationView {
            ScrollView(.vertical, showsIndicators: false) {
                VStack(spacing: 20) {
                    //MARK: - Section 1
                    
                    GroupBox(
                        label:
                            SettingsLabelView(labeltxt: "Fructus", labelImg: "info.circle")
                    ){
                        Divider()
                            .padding(.vertical, 4)
                        HStack(alignment: .center, spacing: 10) {
                            Image("logo")
                                .resizable()
                                .scaledToFit()
                                .frame(width: 80,height: 80)
                                .cornerRadius(9)
                            Text("Most fruits are naturally low in fat, Sodium and Calories. None have cholestrol. Fruits are sources of many essestial nutrients, including Potassium, dietary fibre, Vitamin and much more")
                                .font(.footnote)
                        }
                    }
                    
                    
                    
                    //MARK: - Section 2
                    
                    GroupBox(label: SettingsLabelView(labeltxt: "Configuration", labelImg: "paintbrush"), content: {
                        Text("If you wish, you may restart the application by toggle the switch in this box. That way it starts the onboarding process and you will see the Welcome screen again.")
                            .padding(.vertical, 10)
                            .frame(minHeight: 60)
                            .layoutPriority(1)
                            .font(.footnote)
                            .multilineTextAlignment(.leading)
                        Toggle(isOn: $isOnboarding) {
                            if isOnboarding {
                                Text("Restarted".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.green)
                            } else {
                                Text("Restart".uppercased())
                                    .fontWeight(.bold)
                                    .foregroundStyle(Color.secondary)
                            }
                        }
                        .padding()
                        .background(
                            Color(UIColor.tertiarySystemBackground)
                                .clipShape(RoundedRectangle(cornerRadius: 8.0, style: .continuous))
                        )
                    })
                    
                    
                    
                    //MARK: - Section 3
                    
                    GroupBox(label: SettingsLabelView(labeltxt: "Application", labelImg: "apps.iphone")
                    ){
                        SettingsRowView(name: "Developer", content: "Joh/Jane")
                        SettingsRowView(name: "Designer", content: "Robert Petras")
                        SettingsRowView(name: "Compatibility", content: "iOS 14")
                        SettingsRowView(name: "Website", linklabel: "SwiftUI MasterClass Udemy", destination: "swiftuimasterclass.com")
                        SettingsRowView(name: "Twitter", linklabel: "@faleela", destination: "twitter.com")
                        SettingsRowView(name:"SwiftUI", content: "2.0")
                        SettingsRowView(name: "App Version", content: "1.1.0")
                    }
                    
                    
                }//: VSTACK
                .navigationTitle("Settings")
                .toolbar {
                    ToolbarItem(placement: .navigationBarTrailing) {
                        Button {
                            dismiss()
                        } label: {
                            Image(systemName: "xmark")
                        }

                    }
                }
                .padding()
            } //: SCROLLVIEW
        }//: NAVIGATION
       
    }
}

#Preview {
    SettingsView()
        .preferredColorScheme(.dark)
        .previewDevice("iPhone 11 Pro")
}
