//
//  SourceLinkView.swift
//  Frutizy
//
//  Created by Amr Saeed on 12/10/2021.
//

import SwiftUI

struct SourceLinkView: View {
    
    let url = URL(string: "https://www.wikipedia.org")!
    var body: some View {
     
        GroupBox{
            
            HStack{
                Text("Content Source")
                Spacer()
                
                Link("Wikipedia", destination: url)
                Image(systemName: "arrow.up.right.square")
                
            }//: HStack
            .font(.footnote)
        
        }
        
    }
}

struct SourceLinkView_Previews: PreviewProvider {
    static var previews: some View {
        SourceLinkView()
            .previewLayout(.sizeThatFits)
            .padding()
    }
}
