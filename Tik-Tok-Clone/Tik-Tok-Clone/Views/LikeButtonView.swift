//
//  LikeButtonView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct LikeButtonView: View {
    @Binding var tikTok: TikTok
    
    var body: some View {
        HStack(alignment: .center) {
            Button {
                tikTok.incrementLikes()
            } label: {
                VStack(spacing: 5) {
                    Image(systemName: "heart.fill")
                        .font(.system(size: 35, weight: .thin))
                        .foregroundColor(.white)
                    
                    Text(String(tikTok.likes))
                        .bold()
                        .font(.system(size: 13))
                        .foregroundColor(.white)
                }
            }
        }
    }

}

struct LikeButtonView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            LikeButtonView(tikTok: $tikTok)
        }
    }
}
