//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI

struct LandmarkList: View {
  var body: some View {
    List {
      LandmarkRow(landmark: landmarks[0])
      LandmarkRow(landmark: landmarks[1])
    }
  }
}

#Preview {
  LandmarkList()
}
