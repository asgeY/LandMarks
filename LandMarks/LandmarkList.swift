//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Kritbovorn on 14/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    
    @EnvironmentObject var userData: UserData
    
    var body: some View {
        
        List {
            
            Toggle(isOn: $userData.showFavoritesOnly) {
                
                Text("Favorite only")
            }
            
            ForEach(userData.landmarks) { landmark in
                
                if !self.userData.showFavoritesOnly || landmark.isFavorite {
                    NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                        LandmarkRow(landmark: landmark)
                    }
                }
            }
        }
        .navigationBarTitle(Text("Landmarks"))
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    
    
    static var previews: some View {
            
        NavigationView {
            LandmarkList()
                .environmentObject(UserData())
        }
        
    }
}
#endif
