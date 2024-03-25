//
//  FeedView.swift
//  TikTokTutorial
//
//  Created by SeungHwan Yoo on 2024/03/22.
//

import SwiftUI
import AVKit

struct FeedView: View {
    @StateObject var viewModel = FeedViewModel()
    @State private var scrollPosition: String?
    @State private var player = AVPlayer()
    
    var body: some View {
        ScrollView {
            LazyVStack(spacing: 0) {
                ForEach(viewModel.posts) { post in
                    FeedCell(post: post, player: player)
                        .id(post.id)
                        .onAppear {
                            playerInitialVideoIfNecessary()
                        }
                }
            }
            .scrollTargetLayout()
        }
        .onAppear { player.play() }
        .scrollPosition(id: $scrollPosition)
        .scrollTargetBehavior(.paging)
        .ignoresSafeArea()
        .onChange(of: scrollPosition) { old, new in
            print("DEBUG: Scroll position is \(String(describing: new))")
            playVideoOnChangeOfScrollPosition(postId: new)
        }
    }
    
    func playerInitialVideoIfNecessary() {
        guard scrollPosition == nil, let post = viewModel.posts.first, player.currentItem == nil else { return }
        guard let videoUrl = URL(string: post.videoUrl) else { return }
        
        let playerItem = AVPlayerItem(url: videoUrl)
        player.replaceCurrentItem(with: playerItem)
    }
    
    func playVideoOnChangeOfScrollPosition(postId: String?) {
        guard let currentPost = viewModel.posts.first(where: { $0.id == postId }) else { return }
        guard let videoUrl = URL(string: currentPost.videoUrl) else { return }
        
        player.replaceCurrentItem(with: nil)
        let playerItem = AVPlayerItem(url: videoUrl)
        player.replaceCurrentItem(with: playerItem)
    }
}

#Preview {
    FeedView()
}
