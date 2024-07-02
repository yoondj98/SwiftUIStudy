//
//  Section6View.swift
//  Landmarks
//
//  Created by 홍승현 on 7/2/24.
//

import SwiftUI

struct ContentView: View {
  var body: some View {
    VStack(spacing: 0) {
      MapView()
        .frame(height: 300)

      CircleImage()
        .frame(width: 300, height: 300)
        .offset(y: -130)
        .padding(.bottom, -130)

      VStack(alignment: .leading) {
        Text("WhiteHyun")
          .font(.title)
        HStack {
          Text("A tallest person who I've never met.")
          Spacer()
          Text("Hello :)")
        }
        .font(.subheadline)
        .foregroundStyle(.secondary)

        Divider()

        Text("About Cat")
          .font(.title2)

        Text("Descriptive text goes here.")
      }
      .padding()

      Spacer()
    }
  }
}

#Preview {
  ContentView()
}
