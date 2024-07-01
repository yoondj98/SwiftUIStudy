//
//  ContentView.swift
//  Landmarks
//
//  Created by 권승용 on 7/1/24.
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
