//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        // landmarks는 전역변수로 어디서든 접근이 가능.
        List(landmarks) {
            LandmarkRow(landmark: $0)
        }
    }
}

#Preview {
    LandmarkList()
}
