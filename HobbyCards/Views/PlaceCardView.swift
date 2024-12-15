//
//  PlayerCardView.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import SwiftUI

struct PlaceCardView: View {
  
    let providedPlace:Place
    
    var body: some View{
        
        VStack{
            Rectangle()
                .fill(Color(providedPlace.primaryColor)
            Rectangle()
                .fill(Color(providedPlace.secondaryColor)
            Rectangle()
                .fill(Color(providedPlace.tertiaryColor)
                      
            Text(providedPlace.name)
                .font(.largeTitle)
            
            
           
                
            }
        }
    }


#Preview {
    PlaceCardView(providedPlace: TheGreatWall)
}
