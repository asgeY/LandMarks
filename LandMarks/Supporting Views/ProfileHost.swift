//
//  ProfileHost.swift
//  LandMarks
//
//  Created by Kritbovorn on 15/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProfileHost : View {
    
    @Environment(\.editMode) var mode
    
    @State var profile = Profile.default
    
    @State var draftProfile = Profile.default
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 20) {
            
            HStack {
                
                if self.mode?.value == .active {
                    Button(action: {
                        self.profile = self.draftProfile
                        self.mode?.animation().value = .inactive
                    }) {
                        Text("Done")
                    }
                }
                
                Spacer()
                
                EditButton()
            }
            
            if self.mode?.value == .inactive {
                ProfileSummary(profile: profile)
            }else{
                ProfileEditor(profile: $draftProfile)
                    .onDisappear {
                        self.draftProfile = self.profile
                }
            }
        }
        .padding()
    }
}

#if DEBUG
struct ProfileHost_Previews : PreviewProvider {
    static var previews: some View {
        ProfileHost()
    }
}
#endif
