//
//  ContentView.swift
//  TapBarView
//
//  Created by Brubrusha on 2/3/21.
//

import SwiftUI

struct ContentView: View {
    
    @State private var currentIndex = 0
    private let colors: [Color] = [.pink, .blue, .green, .yellow]
    
    var body: some View {
        TabView(selection: $currentIndex) {
            ForEach(0..<colors.count, id: \.self) { index in
                colors[index]
                    .tag(index)
            }
        }
        .tabViewStyle(PageTabViewStyle(indexDisplayMode: .never))
        .overlay(ThreeSideOfKubView(numberOfPages: colors.count, currentIndex: currentIndex))
        .animation(.default)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
