//
//  Landmark.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import CoreLocation
import SwiftUI

struct Landmark: Hashable, Codable {
  
  // MARK: Properties

  var id: Int
  var name: String
  var park: String
  var state: String
  var description: String
  private var imageName: String
  private var coordinates: Coordinates

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
