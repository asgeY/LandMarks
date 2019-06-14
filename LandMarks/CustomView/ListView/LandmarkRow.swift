//
//  LandmarkRow.swift
//  LandMarks
//
//  Created by Kritbovorn on 14/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct LandmarkRow : View {
    
    var landmark: Landmark
    
    var body: some View {
        
        HStack {
            
            landmark.image(forSize: 50)
            
            Text(landmark.name)
        }

    }
}

#if DEBUG
struct LandmarkRow_Previews : PreviewProvider {
    
    static var previews: some View {
        
        
        Group {
            
            LandmarkRow(landmark: landmarkData[0])
            LandmarkRow(landmark: landmarkData[1])
            LandmarkRow(landmark: landmarkData[2])
        }
        .previewLayout(.fixed(width: 300, height: 70))
        
        
    }
}
#endif
