//
//  Section5View.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI
import MapKit

struct Section5View: View {
  
  var body: some View {
    Map(initialPosition: .region(region))
  }
  
  private var region: MKCoordinateRegion {
    .init(
      center: .init(latitude: 34.011_286, longitude: -116.166_868),
      span: .init(latitudeDelta: 0.2, longitudeDelta: 0.5)
    )
  }
}

#Preview {
  Section5View()
}
