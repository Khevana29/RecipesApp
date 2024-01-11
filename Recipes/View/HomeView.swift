//
//  HomeView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-07.
//

import SwiftUI

struct HomeView: View {
    @State private var text: String = ""
    var recipeCard : [RecipeCard] = RecipeData
    var body: some View {
        NavigationView{
            ScrollView {
                Spacer()
                VStack{
                    Text("MostlyiOS's Recipes")
                        .font(.system(size: 30))
                        .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                    
                    TextField(" 🔍 Search Recipes", text: $text)
                    
                        .padding()
                        .overlay(
                            RoundedRectangle(cornerRadius:  14)
                                .stroke(Color.white, lineWidth: 2)
                            
                        )
                        .padding()
                    
                    
                    ForEach(recipeCard){ item in
                        
                        NavigationLink(destination: RecipeHomeView(isSelected: .ingredients, recipeCard: item)){
                            RecipeCardView(recipeCard: item)
                                .padding()
                        } // NavigationLink
                        
                        
                    } //ForEach
                    
                    
                    
                    
                }// ScrollView
                
            }//NavigationView
        } //VStack
    }
}

#Preview {
    HomeView()
}
