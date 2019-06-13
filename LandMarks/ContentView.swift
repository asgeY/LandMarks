//
//  ContentView.swift
//  LandMarks
//
//  Created by Kritbovorn on 12/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ContentView : View {
    
    var body: some View {
        
        
        VStack {
            
            MapView()
                .edgesIgnoringSafeArea(.top)
                .frame(height: 300)
            
            CircleImage()
                .offset(y: -130)
                .padding(.bottom, -130)
            
            VStack(alignment: .leading) {
                Text("Turtle Rock")
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .multilineTextAlignment(.center)
                    .lineLimit(nil)
                HStack(alignment: .top) {
                    Text("Joshua Tree National Park.")
                        .font(.subheadline)
                    
                    Spacer()
                    
                    Text("California")
                        .font(.subheadline)
                    
                }
                
            }
            .padding()
            
            Spacer()
        }
    }
}

#if DEBUG
struct ContentView_Previews : PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
#endif
