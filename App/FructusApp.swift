//
//  FructusApp.swift
//  Fructus
//
//  Created by Faleela on 09/09/24.
//

import SwiftUI

@main
struct FructusApp: App {
    @AppStorage("isOnboarding") var isOnboarding: Bool = true
    var body: some Scene {
        WindowGroup {
            if isOnboarding {
                OnboardingView()

            } else {
                ContentView()
            }
        }
    }
}
