//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI

struct LandmarkList: View {
    var body: some View {
        List { // landmarks는 전역변수로 어디서든 접근이 가능.
            LandmarkRow(landmark: landmarks[0])
            LandmarkRow(landmark: landmarks[1])
        }
    }
}

#Preview {
    LandmarkList()
}
