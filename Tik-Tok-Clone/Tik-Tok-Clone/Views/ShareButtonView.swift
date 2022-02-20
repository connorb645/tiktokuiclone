//
//  ShareButtonView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct ShareButtonView: View {
    @Binding var tikTok: TikTok
    
    var body: some View {
        Button {
            tikTok.incrementShareCounter()
        } label: {
            VStack(spacing: 5) {
                Image(systemName: "arrowshape.turn.up.right.fill")
                    .font(.system(size: 35, weight: .thin))
                    .foregroundColor(.white)
                
                Text(String(tikTok.shareCounter))
                    .bold()
                    .font(.system(size: 13))
                    .foregroundColor(.white)
            }
        }
    }
}

struct ShareButtonView_Previews: PreviewProvider {
    @State static var tikTok: TikTok = exampleTikTok1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ShareButtonView(tikTok: $tikTok)
        }
    }
}
