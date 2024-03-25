//
//  ProfileHeaderView.swift
//  TikTokTutorial
//
//  Created by SeungHwan Yoo on 2024/03/22.
//

import SwiftUI

struct ProfileHeaderView: View {
    var body: some View {
        VStack(spacing: 16) {
            VStack(spacing: 8) {
                // profile image
                Image(systemName: "person.circle.fill")
                    .resizable()
                    .frame(width: 80, height: 80)
                    .foregroundStyle(Color(.systemGray5))
                
                // user name
                Text("@lewis.hamiltom")
                    .font(.subheadline)
                    .fontWeight(.semibold)
            }
            
            // stats view
            HStack(spacing: 16) {
                UserStatView(value: 5, title: "Following")
                UserStatView(value: 1, title: "Followers")
                UserStatView(value: 7, title: "Likes")      
            }
            
            // action button
            Button {
                
            } label: {
                Text("Edit Profile")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .frame(width: 360, height: 32)
                    .foregroundStyle(.black)
                    .background(Color(.systemGray6))
                    .clipShape(RoundedRectangle(cornerRadius: 6))
            }
            
            Divider()
        }
    }
}

#Preview {
    ProfileHeaderView()
}
