//
//  ContentView.swift
//  Frutizy
//
//  Created by Amr Saeed on 29/09/2021.
//

import SwiftUI

struct ContentView: View {
    //MARK:- Properities
    var fruits: [Fruit] = fruitsData
    
    //MARK:- Body
    var body: some View {
        NavigationView {
              List{
             ForEach(fruits) { item in
                FruitRowView(fruit: item)
                    .padding(.vertical,4)
                }
            }
              
          .navigationTitle("Fruits")
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
