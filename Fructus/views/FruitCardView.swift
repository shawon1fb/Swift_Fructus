//
//  FruitCardView.swift
//  Fructus
//
//  Created by shahanul on 4/10/21.
//

import SwiftUI

struct FruitCardView: View {
    
    var fruit:Fruit
    
    @State private var isAnimating:Bool = false
    
    
    
    var body: some View {
        ZStack {
            VStack(spacing: 20) {
                Image(fruit.image)
                    .resizable()
                    .scaledToFit()
                    .shadow(color: Color(red: 0, green: 0, blue: 0, opacity: 0.15), radius: 8, x: 6, y: 6)
                    .scaleEffect(isAnimating ? 1.0 : 0.6)
                
                Text(fruit.title)
                    .foregroundColor(.white)
                    .font(.largeTitle)
                    .fontWeight(.heavy)
                    .shadow(
                        color:
                            Color( red:0, green:0,blue:0 ,opacity:0.15),
                        radius: 2,
                        x: 2,
                        y: 2
                    )
                Text(fruit.headline)
                    .foregroundColor(.white)
                    .multilineTextAlignment(.center)
                    .padding(.horizontal,16)
                    .frame(maxWidth:480)
                StartButton()
                
            }//: VSTACK
        }
        .onAppear{
            withAnimation(.easeOut(duration: 0.5) ){
                isAnimating = true
             }
        }
        .frame(minWidth: 0, idealWidth: .nan, maxWidth: .infinity, minHeight: 0, idealHeight: .nan, maxHeight: .infinity, alignment: .center)
        .background(
            LinearGradient(
                gradient:
                    Gradient(
                        colors:
                            fruit.gradientColors),
                startPoint: .leading,
                endPoint: .trailing
            ).cornerRadius(20)
                .padding(.horizontal,20)
        )//: ZSTACK
    }
}

struct FruitCardView_Previews: PreviewProvider {
    static var previews: some View {
        FruitCardView(fruit: fruitsData[7]).previewLayout(.fixed(width: 320, height: 640))
    }
}
