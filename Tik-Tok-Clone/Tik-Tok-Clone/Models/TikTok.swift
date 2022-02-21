//
//  TikTok.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import Foundation

struct TikTok: Identifiable {
    let id: UUID = UUID()
    var profile: Profile
    let postDescription: String
    var videoURL: String
    let previewImageName: String
    let song: Song
    var likes: Int
    var comments: Int
    var shareCounter: Int
    
    mutating func incrementLikes() {
        self.likes += 1
    }
    
    mutating func incrementComments() {
        self.comments += 1
    }
    
    mutating func incrementShareCounter() {
        self.shareCounter += 1
    }
}

struct Song: Identifiable {
    let id: UUID = UUID()
    let songName: String
    let artistName: String
    let songImageName: String
}

struct Profile: Identifiable {
    let id: UUID = UUID()
    let userName: String
    let following: Int
    let followers: Int
    let likes: Int
    let imageName: String
}
