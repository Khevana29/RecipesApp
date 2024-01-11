//
//  RecipesApp.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-06.
//

import SwiftUI

@main
struct RecipesApp: App {
    @AppStorage("isOnBoarding") var isOnBoarding : Bool = true
    
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
