//
//  CategoryHome.swift
//  Landmarks
//
//  Created by 윤동주 on 7/4/24.
//

import SwiftUI

struct CategoryHome: View {
    var body: some View {
        NavigationSplitView {
            Text("Hello, World!")
                .navigationTitle("Featured")
        } detail: {
            Text("Select a Landmark")
        }
    }
}

#Preview {
    CategoryHome()
}
