//
//  VideoPlayer.swift
//  Tik-Tok-Clone
//
//  Created by Ben Clarke on 21/02/2022.
//


import AVKit


class VideoPlayer: UIView {
        
    var playerLayer = AVPlayerLayer()
    var playerLooper: AVPlayerLooper!
    var queuePlayer: AVQueuePlayer!
    
    let videoURL: String
    
    init(videoURL: String) {
        self.videoURL = videoURL
        super.init(frame: .zero)
        
        setUpVideoPlayer(videoURL: videoURL)
    }
    
    required init?(coder: NSCoder) {
        fatalError("required init")
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        playerLayer.frame = bounds
    }
    
    private func setUpVideoPlayer(videoURL: String) {
        guard let url = URL(string: videoURL) else { return }
        
        let asset = AVAsset(url: url)
        let playerItem = AVPlayerItem(asset: asset)
        let player = AVQueuePlayer(playerItem: playerItem)
        playerLooper = AVPlayerLooper(player: player, templateItem: playerItem)
        
        player.play()
        
        playerLayer.player = player
        playerLayer.videoGravity = AVLayerVideoGravity(rawValue: AVLayerVideoGravity.resizeAspectFill.rawValue)
        
        layer.addSublayer(playerLayer)
    }
    
}


extension URL: ExpressibleByStringLiteral {
    public init(stringLiteral: StaticString) {
        self.init(string: "\(stringLiteral)")!
    }
}
