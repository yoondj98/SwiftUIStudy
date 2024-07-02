//
//  LandmarkDetail.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI

struct LandmarkDetail: View {
  
  var landmark: Landmark

  var body: some View {
    ScrollView {
      MapView(coordinate: landmark.locationCoordinate)
        .frame(height: 300)

      CircleImage(image: landmark.image)
        .frame(width: 300, height: 300)
        .offset(y: -130)
        .padding(.bottom, -130)

      VStack(alignment: .leading) {
        Text(landmark.name)
          .font(.title)
        HStack {
          Text(landmark.park)
          Spacer()
          Text(landmark.state)
        }
        .font(.subheadline)
        .foregroundStyle(.secondary)

        Divider()

        Text("About \(landmark.name)")
          .font(.title2)

        Text(landmark.description)
      }
      .padding()
    }
    .navigationTitle(landmark.name)
    .navigationBarTitleDisplayMode(.inline)
  }
}

#Preview {
  LandmarkDetail(landmark: ModelData().landmarks[0])
}
