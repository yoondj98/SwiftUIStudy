//
//  MapView.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI
import MapKit

struct MapView: View {
    
    private var region: MKCoordinateRegion {
        MKCoordinateRegion(
            center: CLLocationCoordinate2D(latitude: 34.011286, longitude: -116.166868), span: MKCoordinateSpan(latitudeDelta: 0.2, longitudeDelta: 0.2))
    }
    
    var body: some View {
        Map(initialPosition: .region(region))
    }
}

#Preview {
    MapView()
}
