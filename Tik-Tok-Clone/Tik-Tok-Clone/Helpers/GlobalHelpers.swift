//
//  GlobalHelpers.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import Foundation

let exampleVideoURL: URL = URL(string: "https://www.radiantmediaplayer.com/media/big-buck-bunny-360p.mp4")!

var exampleSong1 = Song(songName: "Wonderwall", artistName: "Liam Gallagher", songImageName: "Oasis")

var exampleProfile1 = Profile(userName: "@dvd404", following: 350, followers: 1400, likes: 2000, imageName: "dvd404")

var exampleTikTok1 = TikTok(profile: exampleProfile1, postDescription: "Keep coding #swiftUI #swift", videoURL: exampleVideoURL, previewImageName: "dvd404", song: exampleSong1, likes: 300, comments: 200, shareCounter: 500)


var exampleTikTokList = [exampleTikTok1, exampleTikTok1, exampleTikTok1]
