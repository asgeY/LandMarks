//
//  LandmarkList.swift
//  LandMarks
//
//  Created by Kritbovorn on 14/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LandmarkList : View {
    var body: some View {
        
        NavigationView {
            
            List(landmarkData) { landmark in
                
                NavigationButton(destination: LandmarkDetail(landmark: landmark)) {
                    
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationBarTitle(Text("Landmarks"))
        }
    }
}

#if DEBUG
struct LandmarkList_Previews : PreviewProvider {
    
    
    static var previews: some View {
        
        ForEach(["iPhone Xs", "iPhone 8 Plus", "iPhone 8", "iPad Air (3rd generation"].identified(by: \.self)) { deviceName in
            
            LandmarkList()
                .previewDevice(PreviewDevice(rawValue: deviceName))
                .previewDisplayName(deviceName)
        }
    }
}
#endif
