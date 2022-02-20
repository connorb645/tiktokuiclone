//
//  ContentView.swift
//  Tik-Tok-Clone
//
//  Created by Connor Black on 17/02/2022.
//

import SwiftUI

struct ContentView: View {
    @State var tikTokList: [TikTok] = exampleTikTokList
    let screen = UIScreen.main.bounds
    
    var body: some View {
        ZStack(alignment: .top) {
            
            TopRowButtons()
            
            ScrollView(.vertical, showsIndicators: false, content: {
                ForEach($tikTokList) { tikTok in
                    LazyVStack(spacing: 0) {
                        TikTokView(tikTok: tikTok)
                            .frame(width: screen.width, height: screen.height)
                    }
                }
            })
                .edgesIgnoringSafeArea(.all)
                .zIndex(-1)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView()
    }
}
