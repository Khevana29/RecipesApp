//
//  ContentView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-06.
//

import SwiftUI

struct ContentView: View {
    @AppStorage("isOnBoardingView") var isOnBoardingView : Bool = true
    var body: some View {
    
        if(isOnBoardingView){
            onBoardingView()
        }
        else{
            HomeView()
        }
    }
}

#Preview {
    ContentView()
}
