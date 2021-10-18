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
            .edgesIgnoringSafeArea(.all)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
