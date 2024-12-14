//
//  HockeyStick.swift
//  HobbyCards
//
//  Created by xinyu zhang on 2024-12-14.
//

import SwiftUI

struct Flag: Shape {
    func path(in rect: CGRect) -> Path {
 

    var path = Path()
    
        path.move(to: CGPoint(x: rect.minX, y: rect.maxY))
              path.addLine(to:CGPoint(x: rect.maxX*1/4, y: rect.minY))
        path.addLine(to:CGPoint(x: rect.maxX, y: rect.maxY*0.2))
        path.addLine(to:CGPoint(x: rect.maxX*0.875, y: rect.maxY*0.4))
        path.addLine(to:CGPoint(x: rect.maxX*1/4, y: rect.maxY*0.275))
              path.addLine(to:CGPoint(x: rect.maxX*0.1, y: rect.maxY))
              path.closeSubpath()
             return  path
                
                        }
}

 #Preview {
                  Flag()
}
