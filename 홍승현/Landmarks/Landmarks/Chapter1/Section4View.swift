//
//  ContentView.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI

struct Section4View: View {
  var body: some View {
    Image("cat")
      .resizable()
      .aspectRatio(contentMode: .fit)
      .clipShape(Circle())
      .overlay {
        Circle()
          .stroke(.gray ,lineWidth: 4)
      }
      .shadow(radius: 7)
      .padding()
  }
}

#Preview {
  Section4View()
}
