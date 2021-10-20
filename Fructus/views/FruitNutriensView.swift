//
//  FruitNutriensView.swift
//  Fructus
//
//  Created by shahanul on 16/10/21.
//

import SwiftUI

struct FruitNutriensView: View {
    
    var fruit: Fruit
    var nutrients:[String] = ["Energy","Sugar","Fat","Protin","Vitamins","Minerals"]
    
    var body: some View {
        
        GroupBox(){
            DisclosureGroup("Nutritional value per 100g"){
                ForEach(0..<nutrients.count ) { item in
                    
                    Divider()
                        .padding(.vertical,2)
                    HStack {
                        Group {
                            Image(systemName: "info.circle")
                            Text(String(nutrients[item]))
                        }
                        .foregroundColor(fruit.gradientColors[1])
                        .font(Font.system(.body).bold())
                        Spacer(minLength: 25)
                        Text(fruit.nutrition[item])
                            .multilineTextAlignment(.trailing)
                    }
                }
                
            }
        }
    }
}

struct FruitNutriensView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutriensView(fruit: fruitsData[0])
            .preferredColorScheme(.dark)
            .previewLayout(.fixed(width: 375, height: 480))
            .padding()
    }
}
