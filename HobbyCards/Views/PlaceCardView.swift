import SwiftUI

struct PlaceCardView: View {
    let providedPlace: Place
    
    var body: some View {
        ZStack {
            VStack(spacing: 0) {
              
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
                    .frame(height: 430)
                    .overlay {
                        VStack {
                            
                            Image(providedPlace.imageofplace)
                                .resizable()
                                .scaledToFit()
                                .clipShape(Circle())
                                .frame(width: 220, height: 200)
                                .padding(.bottom, -160)
                            
                            
                            ZStack {
                                HStack(alignment: .top, spacing:0) {
                                   
                                    ZStack {
                                        Flag()
                                            .frame(width: 100, height: 350)
                                            .scaleEffect(x: -1, y: -1)
                                            .rotationEffect(Angle(degrees: -240))
                                            .foregroundStyle(colorFromAssets(named: providedPlace.primaryColor))
                                        
                                        Flag()
                                            .frame(width: 100, height: 350)
                                            .scaleEffect(x: -1, y: -1)
                                            .rotationEffect(Angle(degrees: -244))
                                            .foregroundStyle(colorFromAssets(named: providedPlace.tertiaryColor))
                                        
                                        
                                        Text(providedPlace.country)
                                            .foregroundColor(colorFromAssets(named: providedPlace.primaryColor))
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .offset(x: -70, y: 70)
                                    }
                                    
                                 
                                    ZStack {
                                        Flag()
                                            .frame(width: 100, height: 350)
                                            .scaleEffect(x: 1, y: -1)
                                            .rotationEffect(Angle(degrees: 240))
                                            .foregroundStyle(colorFromAssets(named: providedPlace.primaryColor))
                                        
                                        Flag()
                                            .frame(width: 100, height: 350)
                                            .scaleEffect(x: 1, y: -1)
                                            .rotationEffect(Angle(degrees: 244))
                                            .foregroundStyle(colorFromAssets(named: providedPlace.tertiaryColor))
                                        
                                        
                                        Text(providedPlace.city)
                                            .foregroundColor(colorFromAssets(named: providedPlace.primaryColor))
                                            .font(.title)
                                            .fontWeight(.semibold)
                                            .offset(x: 70, y: 70)
                                    }
                                }
                                
                               
                                VStack {
                                    Spacer()
                                        .frame(height: 290)
                                    
                                    Circle()
                                        .frame(height: 80)
                                        .shadow(radius: 15)
                                        .overlay(alignment: .center) {
                                            Text(providedPlace.establishedyear)
                                                .foregroundColor(colorFromAssets(named: providedPlace.tertiaryColor))
                                                .font(.system(size: 30))
                                                .fontWeight(.bold)
                                        }
                                }
                            }
                        }
                      
                        ZStack {
                            Image(systemName: "airplane.departure")
                                .resizable()
                                .scaledToFit()
                                .frame(height: 50)
                        }
                    }
                
       
                Rectangle()
                    .fill(colorFromAssets(named: providedPlace.tertiaryColor))
            }
            .ignoresSafeArea()
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

// 预览
#Preview {
    PlaceCardView(providedPlace: TheGreatWall)
}

