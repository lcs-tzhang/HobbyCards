//
//  PlayerCardView.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import SwiftUI

struct PlaceCardView: View {
    let providedPlace: Place

    var body: some View {
        ZStack{
            VStack(spacing:0) {
                Rectangle()
                    .fill(colorFromAssets(named: providedPlace.primaryColor))
                    .frame(height: 180)
                    .overlay(alignment: .center) {
                        Text(providedPlace.name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(colorFromAssets(named: providedPlace.tertiaryColor))
                            .padding(.top, 40)
                    }
                
                Rectangle()
                    .fill(colorFromAssets(named: providedPlace.secondaryColor))
                    .frame(height: 400)
                    .overlay{
                        
                        VStack{
                            
                            Circle()
                                .frame(height:80)
                                .shadow(radius: 25)
                                .overlay(alignment: .center) {
                            Text(providedPlace.establishedyear)
                                .foregroundColor(colorFromAssets(named:providedPlace.tertiaryColor))
                                .font(.system(size: 30))
                                .fontWeight(.bold)
                                }
                                
                        }
                        HStack {
                            ZStack{
                                Flag()
                                    .frame(width:100,height:320)
                                    .scaleEffect(x:-1,y:-1)
                                    .rotationEffect(Angle(degrees: -240))
                                    .foregroundStyle(colorFromAssets(named:providedPlace.primaryColor))
                                    
                                Flag()
                                    .frame(width:100,height:320)
                                    .scaleEffect(x:-1,y:-1)
                                    .rotationEffect(Angle(degrees: -244))
                                    .foregroundStyle(colorFromAssets(named:providedPlace.tertiaryColor))
                            }
                        
                       
                        
                            ZStack{
                                Flag()
                                    .frame(width:100,height:320)
                                    .scaleEffect(x:1,y:-1)
                                    .rotationEffect(Angle(degrees: 240))
                                    .foregroundStyle(colorFromAssets(named:providedPlace.primaryColor))
                                Flag()
                                    .frame(width:100,height:320)
                                    .scaleEffect(x:1,y:-1)
                                    .rotationEffect(Angle(degrees: 244))
                                    .foregroundStyle(colorFromAssets(named:providedPlace.tertiaryColor))
                            }
                        }
                        
                        
                        Image(providedPlace.imageofplace)
                            .resizable()
                            .scaledToFit()
                            .clipShape(Circle())
                            .frame(width: 300, height: 350)
                           
                    }
                
                
                Rectangle()
                    .fill(colorFromAssets(named: providedPlace.tertiaryColor))
                
            }
            .ignoresSafeArea()
//
//                
                
//                
                
        }
    }

    private func colorFromAssets(named colorName: String) -> Color {
        guard let uiColor = UIColor(named: colorName) else {
            print("Warning: Color \(colorName) not found in Assets!")
            return Color.gray
        }
        return Color(uiColor)
    }
}

// Preview
#Preview {
    PlaceCardView(providedPlace: LouvreMuseum)
}
