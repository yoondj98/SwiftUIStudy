//
//  LandmarkRow.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI

struct LandmarkRow: View {
    
    var landmark: Landmark
    
    var body: some View {
        HStack {
            landmark.image
                .resizable()
                .frame(width: 50, height: 50)
            Text(landmark.name)
            
            Spacer()
        }
    }
}

#Preview("Turtle Rock") {
    LandmarkRow(landmark: landmarks[0])
}

// 이렇게 추가 시 원하는 Preview를 여러개 만들 수 있음.

#Preview("Salmon") {
    LandmarkRow(landmark: landmarks[1])
}

#Preview {
    Group {
        LandmarkRow(landmark: landmarks[0])
        LandmarkRow(landmark: landmarks[1])
    }
}
