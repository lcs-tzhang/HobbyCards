//
//  LandingView.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import SwiftUI

struct LandingView: View {
    var body: some View {
        ZStack{
            //Background
            LinearGradient(
                colors:[
                    .gradientBlue,
                    .gradientPurple,
                    .gradientPink,
                    .gradientPink,
                    .gradientPurple,
                    .gradientBlue
                ],
                startPoint: .top,
                endPoint: .bottom
                )
            .ignoresSafeArea()
            
            // Foreground
            
            VStack(spacing :0){
                Text("Tourist attractions Cards")
                    .font(.custom("Bradley Hand",fixedSize: 64.0))
                    .multilineTextAlignment(.center)
                    .foregroundStyle(.white)
                    .rotationEffect(.degrees(-5.0))
                    .padding(.bottom)
                
            Spacer()
                    .frame(height:20)
                
                Image("TravelingPicture")
                    .resizable()
                    .scaledToFit()
                    
                
                    
            }
            }
        }
}

#Preview {
    LandingView()
}
