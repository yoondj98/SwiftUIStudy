//
//  ContentView.swift
//  Landmarks
//
//  Created by 윤동주 on 7/2/24.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        LandmarkList()
    }
}

#Preview {
    ContentView()
        .environment(ModelData())
}
