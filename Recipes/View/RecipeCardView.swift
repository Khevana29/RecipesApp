//
//  RecipeCardView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-07.
//

import SwiftUI

struct RecipeCardView: View {
    var recipeCard : RecipeCard
    var body: some View {
       
        
       
        ZStack{
            
            Image(recipeCard.image)
                .resizable()
                .scaledToFill()
                .frame(width: 350, height: 350)
//                .clipped()
                .clipShape(RoundedRectangle(cornerRadius: 15))
                
            Text(recipeCard.category)
                .font(.system(size: 20))
                .padding()
                .background(.ultraThinMaterial)
                .clipShape(RoundedRectangle(cornerRadius: 15))
                .offset(x: -100 , y : -130)
                
            
            
             
                    
                    VStack(alignment: .leading, spacing: 8){
                        
                        Text(recipeCard.recipeName)
                           .font(.system(size: 30))
                           
                        
                       
                        Text("\(recipeCard.preparationTime) mins  |  \(recipeCard.totalNumeberOfServe) servings")
                            
                      
                    }
                  
                    
               
                .frame(width: 280, height: 60)
                .padding()
//                .clipShape(RoundedRectangle(cornerRadius: 15))
                .background(
                    RoundedRectangle(cornerRadius: 15)
                        .fill(Color(.darkGray).opacity(0.8)) // Adjust the opacity as needed
                )
               
                .offset(y: 100)
                
       
                
               
                
                
          
          
            
        
                
        }
    }
}

#Preview {
    RecipeCardView(recipeCard: RecipeData[0])
}
