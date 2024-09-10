//
//  ContentView.swift
//  CelebrateBC
//
//  Created by Theodore Utomo on 9/9/24.
//

import SwiftUI

struct ContentView: View {
    @State private var messageString = ""
    @State private var imageName = ""
    var body: some View {
        VStack {
            Spacer()
            Image(imageName)
                .resizable()
                .scaledToFit()
                .frame(width: 350, height: 350)
            Text(messageString)
                .font(.largeTitle)
                .fontWeight(.heavy)
                .foregroundStyle(.maroonBC)
                .frame(height: 80)
            Spacer()
            HStack {
                Button() {
                    imageName = "eagleLogo"
                    messageString = "We Are BC!"
                } label: {
                    Image(systemName: "graduationcap")
                    Text("Who Are We?")
                }
                
                Button("🦅 How is Baldwin?") {
                    imageName = "baldwin"
                    messageString = "Flyin' High!"
                }
            }
            .buttonStyle(.borderedProminent)
            .foregroundStyle(.maroonBC)
            .fontWeight(.bold)
            .tint(.goldBC)
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
