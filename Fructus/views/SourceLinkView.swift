//
//  SourceLinkView.swift
//  Fructus
//
//  Created by shahanul on 7/10/21.
//

import SwiftUI

struct SourceLinkView: View {
    var body: some View {

        GroupBox{
            HStack{
                Text("Content Sourch")
                Spacer()
                Link("Wikipedia",destination: URL(string: "https://www.wikipedia.com")!)
                Image(systemName: "arrow.up.right.square")
            }//HStack
            .font(.footnote)
            
        }//GroupBox

    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
