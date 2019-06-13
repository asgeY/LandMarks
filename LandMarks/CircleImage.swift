//
//  CircleImage.swift
//  LandMarks
//
//  Created by Kritbovorn on 13/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct CircleImage : View {
    var body: some View {
        
        Image("turtlerock")
        .clipShape(Circle())
        .overlay(Circle().stroke(Color.white, lineWidth: 4.0))
        .shadow(radius: 10)
        
        
    }
}

#if DEBUG
struct CircleImage_Previews : PreviewProvider {
    static var previews: some View {
        
        CircleImage()
    }
}
#endif
