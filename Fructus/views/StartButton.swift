//
//  StartButton.swift
//  Fructus
//
//  Created by shahanul on 4/10/21.
//

import SwiftUI

struct StartButton: View {
    
    @AppStorage("isOnboarding") var isOnBoarding:Bool?
    
    
    var body: some View {
        Button(action: {
            isOnBoarding =  false
        }) {
            HStack(spacing: 8) {
                Text("Start")
                Image(systemName: "arrow.right.circle")
                    .imageScale(.large )
            }.padding(.horizontal,16)
             .padding(.vertical,10)
             .background(Capsule().strokeBorder(.white,lineWidth: 1.5))
        }//Button
        .accentColor(.white )
    }
}

struct StartButton_Previews: PreviewProvider {
    static var previews: some View {
        StartButton()
            .preferredColorScheme(.dark)
    }
}
