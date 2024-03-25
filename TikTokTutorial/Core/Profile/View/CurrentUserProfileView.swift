//
//  CurrentUserProfileView.swift
//  TikTokTutorial
//
//  Created by SeungHwan Yoo on 2024/03/22.
//

import SwiftUI

struct CurrentUserProfileView: View {
    var body: some View {
        NavigationStack {
            ScrollView {
                VStack(spacing: 2) {
                    // profile header
                    ProfileHeaderView()

                    // post grid view
                    PostGridView()

                }
                .padding(.top)
            }
            .navigationTitle("Profile")
            .navigationBarTitleDisplayMode(.inline)
        }
    }
}

#Preview {
    CurrentUserProfileView()
}
