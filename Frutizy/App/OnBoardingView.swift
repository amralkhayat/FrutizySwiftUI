//
//  OnBoardingView.swift
//  Frutiz
//
//  Created by Amr Saeed on 22/09/2021.
//

import SwiftUI

struct OnBoardingView: View {
    
    //MARK:- Properities
    var fruits: [Fruit] = fruitsData
    //MARK:- Body
    
    var body: some View {
        TabView{
            ForEach(fruits[0...5]) { item in
                FruitCardView(fruit: item)
            }//:Loop
    
        }//: TAB
        .tabViewStyle(PageTabViewStyle())
        
        .padding(.vertical, 20)
    
    }
}
//MARK:- Preview
struct OnBoardingView_Previews: PreviewProvider {
    static var previews: some View {
        OnBoardingView()
    }
}
