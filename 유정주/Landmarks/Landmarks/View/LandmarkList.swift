//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 유정주 on 6/29/24.
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
