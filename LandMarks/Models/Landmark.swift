//
//  Landmark.swift
//  LandMarks
//
//  Created by Kritbovorn on 14/6/2562 BE.
//  Copyright © 2562 Kritbovorn. All rights reserved.
//

import SwiftUI
import CoreLocation

struct Landmark: Hashable, Codable, Identifiable {
    
    var id: Int
    var name: String
    var state: String
    var park: String
    
    var isFavorite: Bool
    var isFeatured: Bool
    
    fileprivate var imageName: String
    fileprivate var coordinates: Coordinates
    
    var category: Category
    
    var locationCoordinate: CLLocationCoordinate2D {
        
        CLLocationCoordinate2D(latitude: coordinates.latitude, longitude: coordinates.longitude)
        
    }
    
    func image(forSize size: Int) -> Image {
        
        ImageStore.shared.image(name: imageName, size: size)
    }
    
    
    enum Category: String, CaseIterable, Hashable, Codable {
        case featured = "Featured"
        case lakes = "Lakes"
        case rivers = "Rivers"
        case mountains = "Mountains"
    }
}

struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
}


