//
//  FruitzyDetailsView .swift
//  Frutizy
//
//  Created by Amr Saeed on 03/10/2021.
//

import SwiftUI

struct FruitzyDetailsView_: View {
    //MARK:- Properities
    var fruit: Fruit
    
    //MARK:- body
    var body: some View {
        
        NavigationView {
            
            ScrollView(.vertical,showsIndicators:false) {
                //Header
                FruitHeaderView(fruit: fruit)
                VStack(alignment:.center, spacing: 20){
                    
                    VStack(alignment:.leading, spacing: 20){
                        //Title
                        Text(fruit.title)
                        
                            .font(.largeTitle)
                            .fontWeight(.heavy)
                            .foregroundColor(fruit.gradientColors[1])
                        
                        //HeadLine
                        Text(fruit.headline)
                            .font(.headline)
                            .multilineTextAlignment(.leading)
                        
                        //Nutrition
                        FruitNutrientsView(fruit: fruit)
                        //SubHeader
                        Text("Learn more about \(fruit.title)".uppercased())
                            .fontWeight(.bold)
                            .foregroundColor(fruit.gradientColors[1])
                        //Description
                        Text(fruit.description)
                            .multilineTextAlignment(.leading)
                       //Link
                        SourceLinkView()
                            .padding(.top,10)
                            .padding(.bottom,40)
                    } //:VStack
                    .padding(.horizontal,20)
                    .frame(maxWidth: 640, alignment: .center)
                    
                }//:VStack
                .navigationBarTitle(fruit.title,displayMode: .automatic)
                .navigationBarHidden(true)

            }//:Scroll
            .edgesIgnoringSafeArea(.top)
            
        }//:Navigation
        .navigationViewStyle(StackNavigationViewStyle())

    }
}


//MARK:- Preview
struct FruitzyDetailsView__Previews: PreviewProvider {
    
    static var previews: some View {
        
        FruitzyDetailsView_(fruit: fruitsData[0])
    }
}
