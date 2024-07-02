//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    List(landmarks) { landmark in
      LandmarkRow(landmark: landmark)
    }
  }
}

#Preview {
  LandmarkList()
}
