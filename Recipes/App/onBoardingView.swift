//
//  onBoardingView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-06.
//

import SwiftUI


struct onBoardingView: View {
  
    @AppStorage("isOnBoardingView") var isOnBoardingView : Bool = true
   
    @State private var selectedTab = 0
   
    var welcome: [Welcome] = WelcomeData
     
    var body: some View {
        TabView(selection: $selectedTab) {
            ForEach(welcome) { item in
                
             
                WelcomeCardView(welcomecard: item, selectedTab: $selectedTab)
                    .tag(item.pageIndex)
                
            } // Loop
        } // TabView
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
    }
}

#Preview {
    onBoardingView( welcome: WelcomeData)
}
