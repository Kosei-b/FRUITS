//
//  SettingsLabelView.swift
//  FRUITS
//
//  Created by Kosei Ban on 2022-09-07.
//

import SwiftUI

struct SettingsLabelView: View {
    // MARK: - PROPERTIES
    
    var labelText: String
    var labelImage: String
    
   // MARK: - Body
    var body: some View {
        HStack {
          Text(labelText.uppercased()).fontWeight(.bold)
          Spacer()
          Image(systemName: labelImage)
        }
    }//: Body
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fruits", labelImage: "info.circle")
          .previewLayout(.sizeThatFits)
          .padding()
    }
}
