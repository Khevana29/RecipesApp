//
//  customTabView.swift
//  Recipes
//
//  Created by Khevana Patel on 2024-01-10.
//

import SwiftUI


enum TabBarOptions{
    case ingredients
    case steps
   
}
struct CustomTabView: View {
    
    
    @Binding var isSelected: TabBarOptions
   
    var body: some View {
       
        GeometryReader { geometry in
            
                HStack(spacing:10){
                    Text("Ingredients")
                        .frame(width: geometry.size.width*0.4)
                        .padding()
                        .background((isSelected == .ingredients) ? Color(.darkGray) : .clear)
                        .cornerRadius(20)
                        .onTapGesture {
                            withAnimation(.spring,{
                                isSelected = .ingredients
                            })
                        }
                       
                        
                        
                        
                  
                
                    
                    Text("Steps")
                        .frame(width: geometry.size.width*0.3)
                        .padding()
                        .background((isSelected == .steps) ? Color(.darkGray) : .clear)
                        .cornerRadius(20)
                        .onTapGesture {
                            withAnimation(.spring,{
                                isSelected = .steps
                            })
                        }
                    
                    
                   
                    
                }
                .frame(width: geometry.size.width * 0.9, height: 50)
                
            .background(.ultraThinMaterial)
            .cornerRadius(20)
            .padding()
            }
            
     
        
        
        
    }
}

#Preview {
    CustomTabView(isSelected: .constant(.ingredients))
}
