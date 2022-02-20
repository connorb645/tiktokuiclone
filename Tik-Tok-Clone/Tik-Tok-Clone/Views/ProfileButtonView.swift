//
//  ProfileButtonView.swift
//  Tik-Tok-Clone
//
//  Created by Davide Senatore on 20/02/22.
//

import SwiftUI

struct ProfileButtonView: View {
    @Binding var profile: Profile
    
    var body: some View {
        Button(action: {
            //Do something?
        }, label: {
            Image(profile.imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 50)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.white, lineWidth: 1))
        })
    }
}

struct ProfileButtonView_Previews: PreviewProvider {
    @State static var profile: Profile = exampleProfile1
    
    static var previews: some View {
        ZStack {
            Color.black
                .edgesIgnoringSafeArea(.all)
            ProfileButtonView(profile: $profile)
        }
    }
}
