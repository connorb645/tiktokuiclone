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
            
            Color.black.ignoresSafeArea()
            
            TopRowButtons()
                .zIndex(1)
            
            GeometryReader { proxy in
                TabView {
                    ForEach($tikTokList) { tikTok in
                        TikTokView(tikTok: tikTok)
                            .offset(x: 6.5)
                            .rotationEffect(.degrees(-90), anchor: .center)
                            .frame(width: proxy.size.width,
                                   height: proxy.size.height)
                    }
                    
                }
                .frame(
                    width: proxy.size.height,
                    height: proxy.size.width
                )
                .rotationEffect(.degrees(90), anchor: .topLeading)
                .offset(x: proxy.size.width)
                .tabViewStyle(
                    PageTabViewStyle(indexDisplayMode: .never)
                )
                
            }
            .edgesIgnoringSafeArea(.vertical)
        }
        
    }
}

struct ContentView_Previews: PreviewProvider {
    
    static var previews: some View {
        ContentView().preferredColorScheme(.dark)
    }
}
