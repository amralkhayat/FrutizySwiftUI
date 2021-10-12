//
//  FruitNutrientsView.swift
//  Frutizy
//
//  Created by Amr Saeed on 12/10/2021.
//

import SwiftUI

struct FruitNutrientsView: View {
    
    //MARK:- Properities
    var fruit: Fruit
    let nutrients: [String] = ["Energy", "Sugar", "Fat", "Protein", "Vitamins", "Minerals"]
    
    //MARK:- body
    var body: some View {
        GroupBox() {
          DisclosureGroup("Nutritional value per 100g") {
            ForEach(0..<nutrients.count, id: \.self) { item in
              Divider().padding(.vertical, 2)
              
              HStack {
                Group {
                  Image(systemName: "info.circle")
                  Text(nutrients[item])
                }
                .foregroundColor(fruit.gradientColors[1])
                .font(Font.system(.body).bold())
                
                Spacer(minLength: 25)
                
                Text(fruit.nutrition[item])
                  .multilineTextAlignment(.trailing)
              }
            }
          }
        } //: BOX
    }
}

//MARK:- Preview
struct FruitNutrientsView_Previews: PreviewProvider {
    static var previews: some View {
        FruitNutrientsView(fruit: fruitsData[0])
            .previewLayout(.fixed(width: 375, height: 480))
            .preferredColorScheme(.dark)
            .padding()
    }
}
