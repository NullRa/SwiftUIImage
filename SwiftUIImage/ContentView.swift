//
//  ContentView.swift
//  SwiftUIImage
//
//  Created by Apple on 2021/10/13.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        Image("iphoneWallPaper")
            .resizable()
            .aspectRatio(contentMode: .fill)
            .frame(width: 300)
            .clipShape(Circle())
            .overlay(
                Image(systemName: "heart.fill")
                    .font(.system(size: 50))
                    .foregroundColor(.white)
                    .opacity(0.5)
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
