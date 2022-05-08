//
//  ContentView.swift
//  " KolorPicker" on Xcode utilizing SwiftUI package
//
//  Created by @Pho Vu on 5/7/22
//  Inspired by YT Channel "Code Palace".
//
//

import SwiftUI // import Swift user interface framework

struct ContentView: View {
    @State private var color = Color.blue // set variable for 1st color = blue
    
    var body: some View {
        VStack {
            Circle() // initiate Circle() to draw a circle
                .frame(width:200, height: 200) // customize frame
                .foregroundColor(color) // set foreground color
                .padding() // control spacing #1
            
            ColorPicker("Choose a color", selection: $color) // pick a color
        }
        .padding() // control spacing #2
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
