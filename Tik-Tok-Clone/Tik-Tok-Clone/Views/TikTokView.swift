//
//  TikTokView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct TikTokView: View {
    @Binding var tikTok: TikTok
    
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack {
            VideoPlayerView(videoURL: tikTok.videoURL)
                .edgesIgnoringSafeArea(.all)
            
            /*VideoPreviewImage(tikTok: $tikTok)
                .frame(maxWidth: screen.width, maxHeight: screen.height)
                .edgesIgnoringSafeArea(.all)*/
            
            ButtonListView(tikTok: $tikTok)
                .padding(.bottom, 20)
            
            PostView(tikTok: $tikTok)
        }
    }
}

struct TikTokView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            TikTokView(tikTok: $tikTok)
        }
    }
}
