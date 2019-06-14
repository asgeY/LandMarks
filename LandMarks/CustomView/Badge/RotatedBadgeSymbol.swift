//
//  RotatedBadgeSymbol.swift
//  LandMarks
//
//  Created by Kritbovorn on 15/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct RotatedBadgeSymbol : View {
    
    let angle: Angle
    
    var body: some View {
        
        BadgeSymbol()
            .padding(-60)
            .rotationEffect(angle, anchor: .bottom)
    }
}

#if DEBUG
struct RotatedBadgeSymbol_Previews : PreviewProvider {
    static var previews: some View {
        RotatedBadgeSymbol(angle: .init(degrees: 5))
    }
}
#endif
