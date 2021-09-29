//
//  FrutizyApp.swift
//  Frutizy
//
//  Created by Amr Saeed on 29/09/2021.
//

import SwiftUI

@main
struct FrutizyApp: App {
    
    @AppStorage("isOnBoardingView") var isOnBoardingView = true
    
    
    var body: some Scene {
        
        WindowGroup {
            if isOnBoardingView {
                
                OnBoardingView()
            }else {
                ContentView()
            }
           
        }
    }
}
