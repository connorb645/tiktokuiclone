//
//  CommentButtonView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct CommentButtonView: View {
    @Binding var tikTok: TikTok
    
    var body: some View {
        Button {
            tikTok.incrementComments()
        } label: {
            VStack(spacing: 5) {
                Image(systemName: "ellipses.bubble.fill")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.white)
                
                Text(String(tikTok.comments))
                    .bold()
                    .font(.system(size: 13))
                    .foregroundColor(.white)
            }
        }
    }
}

struct CommentButtonView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            CommentButtonView(tikTok: $tikTok)
        }
    }
}
