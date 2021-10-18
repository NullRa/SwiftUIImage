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
            .aspectRatio(contentMode: .fit)
            .overlay(
                Text("1. Every Cloudy Has A Sliver Line.\n2. Every Cloudy Has A Sliver Line.\n3. Every Cloudy Has A Sliver Line.\n4. Every Cloudy Has A Sliver Line.\n5. Every Cloudy Has A Sliver Line.\n6. Every Cloudy Has A Sliver Line.")
                    .foregroundColor(.white)
                    .fontWeight(.heavy)
                    .font(.system(.headline, design: .rounded))
                    .padding()
                    .background(Color.gray)
                    .cornerRadius(50)
                    .opacity(0.8)
                    .padding(),
                alignment: .top
            )
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
