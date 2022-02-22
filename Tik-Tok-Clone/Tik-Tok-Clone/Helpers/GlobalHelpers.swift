//
//  GlobalHelpers.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import Foundation

let exampleVideoURL1 = "https://assets.mixkit.co/videos/preview/mixkit-software-developer-working-on-code-screen-close-up-1728-large.mp4"
let exampleVideoURL2 = "https://assets.mixkit.co/videos/preview/mixkit-waterfall-in-forest-2213-large.mp4"
let exampleVideoURL3 = "https://assets.mixkit.co/videos/preview/mixkit-fireworks-illuminating-the-beach-sky-4157-large.mp4"

var exampleSong1 = Song(songName: "Wonderwall", artistName: "Liam Gallagher", songImageName: "Oasis")

var exampleProfile1 = Profile(userName: "@404dvd", following: 350, followers: 1400, likes: 2000, imageName: "dvd404")
var exampleProfile2 = Profile(userName: "@blacksapps", following: 301, followers: 500, likes: 3010, imageName: "connor")
var exampleProfile3 = Profile(userName: "@vikingskullapps", following: 200, followers: 410, likes: 200, imageName: "ben")

var exampleTikTok1 = TikTok(profile: exampleProfile1, postDescription: "Keep coding #swiftUI #swift", videoURL: exampleVideoURL1, previewImageName: "dvd404", song: exampleSong1, likes: 300, comments: 200, shareCounter: 500)
var exampleTikTok2 = TikTok(profile: exampleProfile2, postDescription: "travel #2022", videoURL: exampleVideoURL2, previewImageName: "blacksapp", song: exampleSong1, likes: 400, comments: 100, shareCounter: 22)
var exampleTikTok3 = TikTok(profile: exampleProfile3, postDescription: "New Years #2022", videoURL: exampleVideoURL3, previewImageName: "vikingskullapps", song: exampleSong1, likes: 1337, comments: 21, shareCounter: 130)

var exampleTikTokList = [exampleTikTok1, exampleTikTok2, exampleTikTok3]
