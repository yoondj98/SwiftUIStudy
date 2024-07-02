//
//  Section6View.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
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
