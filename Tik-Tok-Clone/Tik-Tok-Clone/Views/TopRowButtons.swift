//
//  TopRowButtons.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct TopRowButtons: View {
    var body: some View {
        VStack {
            HStack(spacing: 10, content: {
                Button {
                    // Do Something?
                } label: {
                    EmptyView()
                }
                .frame(width: 25, height: 25)
                Spacer()
                Button {
                    // Do Something?
                } label: {
                    Text("Following")
                }
                Button {
                    // Do Something?
                } label: {
                    Text("For You")
                        .font(.system(size: 18, weight: .bold))
                        .bold()
                }
                Spacer()
                Button {
                    // Do Something?
                } label: {
                    Image(systemName: "magnifyingglass")
                        .font(.system(size: 25, weight: .thin))
                }
                .frame(width: 25, height: 25)
            })
                .padding(.horizontal)
                .foregroundColor(.white)
            Spacer()
        }
    }
}

struct TopRowButtons_Previews: PreviewProvider {
    static var previews: some View {
        TopRowButtons()
    }
}
