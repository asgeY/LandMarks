//
//  UserData.swift
//  LandMarks
//
//  Created by Kritbovorn on 14/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI
import Combine

final class UserData: BindableObject {
    
    let didChange = PassthroughSubject<UserData, Never>()
    
    var showFavoritesOnly = false {
        didSet {
            didChange.send(self)
        }
    }
    var landmarks = landmarkData {
        didSet {
            didChange.send(self)
        }
    }
}
