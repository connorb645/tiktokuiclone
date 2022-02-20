//
//  MusicButtonView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct MusicButtonView: View {
    @Binding var tikTok: TikTok
    @State private var angle: Double = 0
    
    var animation: Animation {
        Animation.linear
        .repeatForever()
    }
    
    var body: some View {
        Button(action: {
            //Do something?
        }, label: {
            Image(tikTok.song.songImageName)
                .resizable()
                .scaledToFit()
                .frame(width: 55)
                .clipShape(Circle())
        })
            .rotationEffect(.degrees(angle))
            .animation(.linear(duration: 2).repeatForever(autoreverses: false), value: angle)
            .onAppear {
                angle += 360
            }
    }
}

struct MusicButtonView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            MusicButtonView(tikTok: $tikTok)
        }
    }
}
