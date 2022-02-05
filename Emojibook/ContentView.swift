//
//  ContentView.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import SwiftUI

struct ContentViewSize {
    static let width: CGFloat = 300
    static let height: CGFloat = 300
}

struct ContentView: View {
    var body: some View {
        Text("Hello, world!")
            .frame(width: ContentViewSize.width, height: ContentViewSize.height)
            .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
