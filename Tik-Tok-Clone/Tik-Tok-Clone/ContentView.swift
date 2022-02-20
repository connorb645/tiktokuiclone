//
//  ContentView.swift
//  Tik-Tok-Clone
//
//  Created by Connor Black on 17/02/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Color.black.ignoresSafeArea()
            
            LoadingActivity()
                .frame(width: 150, height: 100)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
