//
//  ContentView.swift
//  Landmarks
//
//  Created by 이준복 on 7/1/24.
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
