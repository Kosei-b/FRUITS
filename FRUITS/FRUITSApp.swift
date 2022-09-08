//
//  FRUITSApp.swift
//  FRUITS
//
//  Created by Kosei Ban on 2022-09-07.
//

import SwiftUI

@main
struct FRUITSApp: App {
    
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
