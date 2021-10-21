//
//  ContentView.swift
//  Frutizy
//
//  Created by Amr Saeed on 29/09/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properities
    @State private var isShowingSettings: Bool = false
    var fruits: [Fruit] = fruitsData
    
    //MARK:- Body
    var body: some View {
        NavigationView {
              List{
             ForEach(fruits) { item in
                 
                 NavigationLink(destination: FruitzyDetailsView_(fruit: item)) {
                     
                     FruitRowView(fruit: item)
                     
                         .padding(.vertical,4)
                 }
              
                }
            }
              
          .navigationTitle("Fruits")
          .navigationBarItems(
              trailing:
                  Button(action: {
                      isShowingSettings = true
                  }) {
                  Image(systemName: "slider.horizontal.3")
                  } //: Button
          )
            
          .sheet(isPresented: $isShowingSettings) {
              SettingsView()
          }
        }
        //: NavigationView
    }
}
//MARK:- Preview
struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(fruits: fruitsData)
    }
}
