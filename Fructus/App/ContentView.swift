//
//  ContentView.swift
//  Fructus
//
//  Created by shahanul on 4/10/21.
//

import SwiftUI

struct ContentView: View {
    
    var fruits :[Fruit] = fruitsData
    
    @State private var isShowingSettings: Bool = false
    
    var body: some View {
        
        NavigationView{
            List{
                ForEach( fruits.shuffled() ){ item in
                    NavigationLink(destination: FruitDetailView(fruit: item)){
                        FruitRowView(fruit: item)
                            .padding(.vertical, 4)
                    }
                    
                    
                }//FOREACH
                
            }//LIST
            
            .navigationTitle("Fruits")
            .navigationBarItems( trailing: Button(action: {
                isShowingSettings = true
            }){
                
                Image(systemName: "slider.horizontal.3")
                
            }//:Button
                                 
                                    .sheet(isPresented: $isShowingSettings){
                SettingsView()
            }
                                 
            )
            
            
            
            
        }//NAVIGATION
        
        .navigationViewStyle(StackNavigationViewStyle())
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
