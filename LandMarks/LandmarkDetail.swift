//
//  ContentView.swift
//  LandMarks
//
//  Created by Kritbovorn on 12/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LandmarkDetail : View {
    
    @EnvironmentObject var userData: UserData
    
    var landmarkIndex: Int {
        
        userData.landmarks.firstIndex(where: {($0.id) == landmark.id})!
    }
    
    var landmark: Landmark
    
    var body: some View {
        
        VStack {
            
            MapView(coordinate: landmark.locationCoordinate)
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage(image: landmark.image(forSize: 250))
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                
                
                HStack {
                    
                    Text(landmark.name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .lineLimit(nil)
                    
                    Button(action: {
                        self.userData.landmarks[self.landmarkIndex].isFavorite.toggle()
                    }) {
                        if self.userData.landmarks[self.landmarkIndex].isFavorite {
                            Image(systemName: "star.fill").foregroundColor(.yellow)
                        }else {
                            Image( systemName: "star").foregroundColor(.gray)
                        }
                    }
                }
                
                HStack(alignment: .top) {
                    Text(landmark.park)
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text(landmark.state)
                        .font(.subheadline)
                    
                }
                
            }
            .padding()
            
            Spacer()
        }
            .navigationBarTitle(Text("landmark.name"), displayMode: .inline)
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        LandmarkDetail(landmark: landmarkData[0])
            .environmentObject(UserData())
    }
}
#endif
