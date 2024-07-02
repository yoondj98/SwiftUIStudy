//
//  Landmark.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import CoreLocation
import SwiftUI

struct Landmark: Hashable, Codable, Identifiable {
  
  // MARK: Properties

  let id: Int
  let name: String
  let park: String
  let state: String
  let description: String
  var isFavorite: Bool
  private let imageName: String
  private let coordinates: Coordinates

  // MARK: Compute Properties

  var image: Image {
    Image(imageName)
  }

  var locationCoordinate: CLLocationCoordinate2D {
    .init(
      latitude: coordinates.latitude,
      longitude: coordinates.longitude
      )
  }


  // MARK: - Coordinates

  struct Coordinates: Hashable, Codable {
    var latitude: Double
    var longitude: Double
  }
}
