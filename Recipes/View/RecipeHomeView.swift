//
//  RecipeHomeView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-10.
//

import SwiftUI

struct RecipeHomeView: View {
    
    @State  var isSelected: TabBarOptions
    var recipeCard : RecipeCard
        
    
    var body: some View {
        
        ScrollView{
            VStack{
                
                Image(recipeCard.image)
                    .resizable()
                    .scaledToFill()
                    .ignoresSafeArea()
                     .frame(width: 400, height: 300)
                    .clipped()
                    .padding(.bottom, 20)
                    
              
               
                VStack{
                    
                    Text(recipeCard.recipeName)
                        .font(.system(size: 30))
                    Text("\(recipeCard.preparationTime) mins | \(recipeCard.totalNumeberOfServe) servings")
                        .foregroundColor(.gray)
                    
                    
                    CustomTabView(isSelected : $isSelected)
                        .padding(.bottom, 80)
                    
                    
                    if(isSelected == .ingredients){
                        IngredientsView()
                   
                    }
                    else if(isSelected == .steps){
                        StepsView()
                        
                       
                    }
                    
                }//VStack
                
               
                
             
                
                
                
              
                
                
                
                
                
            } //VStack
            
        }//ScrollView
    }
}

#Preview {
    RecipeHomeView(isSelected: .ingredients, recipeCard: RecipeData[0])
}
