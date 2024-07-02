//
//  LandmarkList.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI

struct LandmarkList: View {
    
    @State var showFavoriteOnly = true
    
    var filteredLandmarks: [Landmark] {
        landmarks.filter { landmark in
            !showFavoriteOnly || landmark.isFavorite
        }
    }
    
    var body: some View {
        // NavigationSplitView는 iPad 같은 곳에서 사이드바로 반영됨.
        NavigationSplitView {
            // landmarks는 전역변수로 어디서든 접근이 가능.
            List(filteredLandmarks) { landmark in
                NavigationLink {
                    LandmarkDetail(landmark: landmark)
                } label: {
                    LandmarkRow(landmark: landmark)
                }
            }
            .navigationTitle("Landmarks")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    LandmarkList()
}
