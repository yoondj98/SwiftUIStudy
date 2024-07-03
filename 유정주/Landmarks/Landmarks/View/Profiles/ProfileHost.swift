//
//  ProfileHost.swift
//  Landmarks
//
//  Created by 유정주 on 7/3/24.
//

import SwiftUI

struct ProfileHost: View {

    @State private var draftProfile = Profile.default

    var body: some View {
        VStack(alignment: .leading, spacing: 20) {
            ProfileSummary(profile: draftProfile)
        }
        .padding()
    }
}


#Preview {
    ProfileHost()
}
