//
//  OnboardingView.swift
//  FRUITS
//
//  Created by Kosei Ban on 2022-09-07.
//

import SwiftUI

struct OnboardingView: View {
    
    // MARK: - PROPERTIES
    
    var fruits: [Fruit] = fruitsData

    // MARK: - BODY
    var body: some View {
        TabView {
          ForEach(fruits[0...5]) { item in
            FruitsCardView(fruit: item)
          } //: LOOP
        } //: TAB
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical, 20)
        .overlay(
        Text("""
             Let's learn
             about Fruits!
             """)
        .font(.system(size: 50))
        .foregroundColor(.secondary)
        .fontWeight(.heavy)
        .padding()
        .shadow(color: Color.white.opacity(1), radius: 20, x: 4, y: 4)
        ,alignment: .top
        )
    }
}

struct OnboardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnboardingView()
    }
}
