//
//  StartButtonView.swift
//  Frutiz
//
//  Created by Amr Saeed on 19/09/2021.
//

import SwiftUI

struct StartButtonView: View {
    //MARK:- Properities
    @AppStorage("isOnBoardingView") var isOnBoardingView: Bool?

        
    //MARK:- Body
    var body: some View {
        Button(action: {
      isOnBoardingView =  false
        }) {
            HStack (spacing:8) {
                
                Text("Start")
                
                Image(systemName: "arrow.right.circle")
                
            } //: HStack
            .padding(.horizontal, 16)
            .padding(.vertical, /*@START_MENU_TOKEN@*/10/*@END_MENU_TOKEN@*/)
            .background(
                Capsule().strokeBorder(Color.white,lineWidth: 1.25)
                
            )
            
            
            
        }//:Button
        .accentColor(.white)
    }
}
//MARK:- Preview
struct StartButtonView_Previews: PreviewProvider {
    static var previews: some View {
        StartButtonView()
            .preferredColorScheme(.dark)
            .previewLayout(.sizeThatFits)
    }
}
