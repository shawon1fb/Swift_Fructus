//
//  SettingsRowView.swift
//  Fructus
//
//  Created by shahanul on 20/10/21.
//

import SwiftUI

struct SettingsRowView: View {
    //:proparty
    var name: String
    var content: String? = nil
    var linkLabel: String? = nil
    var linkDescription: String? = nil
    //: body
    var body: some View {
        VStack {
            
            Divider().padding(.vertical,4)
            HStack(){
                Text(name).foregroundColor(.gray)
                Spacer()
                if(content != nil ){
                    Text(content!)
                }
                else if(linkLabel != nil && linkDescription != nil){
                    
                    Link(linkLabel!,destination: URL(string: "https://\(linkDescription!)")!)
                    Image(systemName: "arrow.up.right.square")
                    
                }
                
                else{
                    EmptyView()
                }
                
            }//:HStcak
            
            
        }//: Vastack
    }
}

struct SettingsRowView_Previews: PreviewProvider {
    static var previews: some View {
        SettingsRowView(name: "Developer", content: "shawon")
            .previewLayout(.fixed(width: 375, height: 60))
    }
}
