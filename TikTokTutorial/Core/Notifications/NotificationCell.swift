//
//  NotificationCell.swift
//  TikTokTutorial
//
//  Created by SeungHwan Yoo on 2024/03/22.
//

import SwiftUI

struct NotificationCell: View {
    var body: some View {
        HStack {
            Image(systemName: "person.circle.fill")
                .resizable()
                .frame(width: 32, height: 32)
                .foregroundStyle(Color(.systemGray5))
            
            HStack {
                Text("max.cerstappen")
                    .font(.footnote)
                    .fontWeight(.semibold) +
                
                Text("liked one tof your posts. long long sentens")
                    .font(.footnote) +
                
                Text(" ")
                    .font(.caption)
                    .foregroundStyle(.gray) +
                
                Text("3d")
                    .font(.caption)
                    .foregroundStyle(.gray)
            }
            
            Spacer()
            
            Rectangle()
                .frame(width: 48, height: 48)
                .clipShape(RoundedRectangle(cornerRadius: 6))
        }
        .padding(.horizontal)
    }
}

#Preview {
    NotificationCell()
}
