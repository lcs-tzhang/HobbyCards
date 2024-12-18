//
//  PlayersTabView.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import SwiftUI

struct PlaceTabView: View {
    
    var body: some View {
        TabView{
            CoverView()
            ForEach(sights) {currentPlace in PlaceCardView(providedPlace: currentPlace)
            }
        }
        
        .ignoresSafeArea()
        .tabViewStyle(.page(indexDisplayMode: .never))
        .persistentSystemOverlays(.hidden)
    }

}

#Preview {
    PlaceTabView()
}
