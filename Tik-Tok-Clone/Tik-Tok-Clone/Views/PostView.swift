//
//  PostView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct PostView: View {
    @Binding var tikTok: TikTok
    
    var body: some View {
        HStack {
            VStack(alignment: .leading, spacing: 10, content: {
                Spacer()
                
                Text(tikTok.profile.userName)
                    .fontWeight(.bold)
                    .font(.headline)
                Text(tikTok.postDescription)
                    .font(.footnote)
                HStack {
                    Text(tikTok.song.artistName)
                    Text("-")
                    Text(tikTok.song.songName)
                }
                .font(.caption2)
            })
            Spacer()
        }
        .foregroundColor(.white)
        .padding(.bottom, 36)
        .padding(.leading, 16)
    }
}

struct PostView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            PostView(tikTok: $tikTok)
        }
    }
}
