//
//  ContentView.swift
//  Colour
//
//  Created by Michelle Chan on 7/14/20.
//  Copyright © 2020 Michelle Chan. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    @State var animateColor = false
    @State var shiftColors = false
    
    var body: some View {
        Image("Blend")
            .resizable()
            .frame(width: 420, height: 1200)
            .edgesIgnoringSafeArea(.all)
            .hueRotation(.degrees(shiftColors ? 0 : 180))
            .animation(Animation.linear(duration: 10).repeatForever(autoreverses: true).speed(1.5))
            .onAppear() {
                self.animateColor.toggle()
                self.shiftColors.toggle()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
