//
//  VideoPlayerView.swift
//  Tik-Tok-Clone
//
//  Created by Ben Clarke on 21/02/2022.
//

import SwiftUI

struct VideoPlayerView: UIViewRepresentable {
    
    var videoURL: String
    
    func makeUIView(context: Context) -> VideoPlayer {
        return VideoPlayer(videoURL: videoURL)
    }
    
    func updateUIView(_ uiView: VideoPlayer, context: Context) { }
}
