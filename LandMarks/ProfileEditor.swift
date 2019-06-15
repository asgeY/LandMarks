//
//  ProfileEditor.swift
//  LandMarks
//
//  Created by Kritbovorn on 15/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI

struct ProfileEditor : View {
    
    @Binding var profile: Profile
    
    var body: some View {
        
        List {
            HStack {
                Text("User Name")
                    .bold()
                
                Divider()
                
                TextField($profile.username)
            }
            
            Toggle(isOn: $profile.prefersNotifications) {
                Text("Enable Notification")
            }
            
            VStack(alignment: .leading, spacing: 20) {
                
                Text("Seasonal Photo").bold()
                
                SegmentedControl(selection: $profile.seasonalPhoto) {
                    ForEach(Profile.Season.allCases.identified(by: \.self)) { season in
                        Text(season.rawValue).tag(season)
                    }
                }
            }
            .padding(.top)
            
            
            
            VStack {
                
                Text("Goal Date").bold()
                
                DatePicker(
                    
                    $profile.goalDate,
                    minimumDate: Calendar.current.date(byAdding: .year, value: -1, to: profile.goalDate),
                    maximumDate: Calendar.current.date(byAdding: .year, value: 1, to: profile.goalDate),
                    displayedComponents: .date
                    
                )
            }
            .padding(.top)
        }
    }
}

#if DEBUG
struct ProfileEditor_Previews : PreviewProvider {
    static var previews: some View {
        ProfileEditor(profile: .constant(.default))
    }
}
#endif
