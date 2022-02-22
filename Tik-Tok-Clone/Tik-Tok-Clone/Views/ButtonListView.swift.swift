//
//  ButtonListView.swift.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct ButtonListView: View {
    @Binding var tikTok: TikTok
    
    var body: some View {
        HStack {
            Spacer()
            VStack(alignment: .trailing, spacing: 20, content: {
                Spacer()
                
                ProfileButtonView(profile: $tikTok.profile)
                LikeButtonView(tikTok: $tikTok)
                CommentButtonView(tikTok: $tikTok)
                ShareButtonView(tikTok: $tikTok)
                MusicButtonView(tikTok: $tikTok)
            })
                .padding(.trailing, 16)
        }
    }
}

struct ButtonListView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            
            ButtonListView(tikTok: $tikTok)
        }
    }
}
