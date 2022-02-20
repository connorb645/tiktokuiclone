//
//  VideoPreviewImage.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct VideoPreviewImage: View {
    @Binding var tikTok: TikTok
    @State private var showingVideoPlayer = false
    
    var body: some View {
        ZStack {
            Image(tikTok.previewImageName)
                .resizable()
                .aspectRatio(contentMode: .fill)
            
            Button(action: {
                showingVideoPlayer = true
            }, label: {
                Image(systemName: "play.circle")
                    .foregroundColor(.white)
                    .font(.system(size: 40))
            })
        }
    }
}

struct VideoPreviewImage_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            VideoPreviewImage(tikTok: $tikTok)
        }
    }
}
