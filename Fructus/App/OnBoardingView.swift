//
//  OnBoardingView.swift
//  Fructus
//
//  Created by shahanul on 4/10/21.
//

import SwiftUI

struct OnBoardingView: View {
    
    var fruits :[Fruit] = fruitsData
    
    
    var body: some View {
        
        
        TabView{
            ForEach(fruits){ item in
               
                FruitCardView(fruit: item)
            }
         
        }//TabView
        .tabViewStyle(PageTabViewStyle())
        .padding(.vertical,20)
    }
}

struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView(fruits: fruitsData)
    }
}
