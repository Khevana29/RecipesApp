//
//  WelcomeUIView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-06.
//

import SwiftUI


struct WelcomeCardView: View {
    
    @AppStorage("isOnBoardingView") var isOnBoardingView : Bool?
    
    var welcomecard: Welcome
  
    @Binding var selectedTab: Int
    
    var body: some View {
        ZStack {
            Color(.black)
                .ignoresSafeArea()
            VStack {
                Spacer()
                
                Text(welcomecard.Title)
                    .fontWeight(.semibold)
                    .font(.system(size: 40))
                    .multilineTextAlignment(.leading)
                
                Image(welcomecard.image)
                    .resizable()
                    .scaledToFit()
                    .frame(height: 300)
                
                Text(welcomecard.SubTitle)
                    .font(.title3)
                    .padding()
                Spacer()
                
                Button {
                    if selectedTab < 2 {
                        
                        selectedTab += 1
                        
                        
                        
                    }else{
                        isOnBoardingView = false
                    }
                    print("selectedTab: \(selectedTab)")
                    
                 
                } label: {
                    Image(systemName: (selectedTab == 2) ? "checkmark.circle" : "chevron.forward.circle")
                        .resizable()
                        .frame(width: 35, height: 35)
                        .padding(.leading, 250)
                        .padding()
                }
                
                
            }
        }
    }
}

#Preview {
    WelcomeCardView(welcomecard: WelcomeData[0], selectedTab: .constant(0))
}

