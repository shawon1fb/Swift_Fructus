//
//  SettingsLabelView.swift
//  Fructus
//
//  Created by shahanul on 20/10/21.
//

import SwiftUI

struct SettingsLabelView: View {
    //: Proparty
    
    var labelText: String
    var labelImage: String
 
    //: body
    var body: some View {
        HStack {
            Text(labelText.uppercased())
                .fontWeight(.bold)
            Spacer()
            Image(systemName: labelImage)
        }
    }
}

struct SettingsLabelView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsLabelView(labelText: "Fructus", labelImage: "info.circle")
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
