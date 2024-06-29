//
//  CircleImageView.swift
//  Landmarks
//
//  Created by 유정주 on 6/29/24.
//

import SwiftUI

struct CircleImageView: View {
    var body: some View {
        Image("Sonoma")
            .resizable()
            .frame(width: 300, height: 300)
            .clipShape(Circle())
            .overlay {
                Circle().stroke(.white, lineWidth: 4)
            }
            .shadow(radius: 7)
    }
}

#Preview {
    CircleImageView()
}
