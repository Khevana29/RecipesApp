//
//  RecipeCardModel.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-10.
//

import SwiftUI

struct RecipeCard : Identifiable{
    
    var id = UUID()
    var category : String
    var image : String
    var recipeName : String
    var preparationTime : Int
    var totalNumeberOfServe : Int
    
    
    
}
