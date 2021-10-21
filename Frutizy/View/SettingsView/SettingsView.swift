//
//  SettingsView.swift
//  Frutizy
//
//  Created by Amr Saeed on 21/10/2021.
//

import SwiftUI

struct SettingsView: View {
    //MARK:- PROPERITIES
    @Environment(\.presentationMode) var presentationMode
    
    //MARK:- BODY
    var body: some View {
        NavigationView {
            
            ScrollView (.vertical, showsIndicators: false){
                
                VStack (spacing: 20) {
                    
                    Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
                    
                } //: VStack
                .navigationBarTitle("Settings",displayMode: .large)
                .navigationBarItems(
                    trailing:
                        Button(action: {
                            presentationMode.wrappedValue.dismiss()
                        }) {
                        Image(systemName: "xmark")
                        }
                )
                .padding()
              
            } //: ScrollView
           
          
        }//: NavihationView
        
       
    }
}


//MARK:- PREVIEW
struct SettingsView_Previews: PreviewProvider {
    static var previews: some View {
        
        SettingsView()
            .preferredColorScheme(.dark)
            .previewDevice("iphone 12 Pro Max")
    }
}
