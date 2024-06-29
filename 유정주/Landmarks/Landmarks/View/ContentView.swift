//
//  ContentView.swift
//  Landmarks
//
//  Created by 유정주 on 6/29/24.
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
