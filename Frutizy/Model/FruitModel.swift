//
//  FruitModel.swift
//  Frutiz
//
//  Created by Amr Saeed on 26/09/2021.
//

import SwiftUI

//MARK:- Fruit data model
struct Fruit: Identifiable {
   let id = UUID()
    var title: String
    var headline: String
    var image: String
    var gradientColors: [Color]
    var description: String
    var nutrition: [String]
}
