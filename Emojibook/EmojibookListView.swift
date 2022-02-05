//
//  ContentView.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import SwiftUI

struct EmojibookListViewSize {
    static let width: CGFloat = 300
    static let height: CGFloat = 200
    static let paddingLeft: CGFloat = 12  // = NSMenuItem's separator padding
    static let paddingRight: CGFloat = 12 // = NSMenuItem's separator padding
    static let innerWidth = width - paddingLeft - paddingRight
}

struct EmojibookListView: View {
    var colums: [GridItem] = [
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
        GridItem(.flexible()),
    ]
    
    var emojis: [Emoji] = Emoji.galleries()
    
    var body: some View {
        ScrollView {
            LazyVGrid(columns: colums, spacing: 4) {
                ForEach(emojis) { emoji in
                    Text(emoji.character)
                        .font(.system(size: 40))
                }
            }

            .frame(width: EmojibookListViewSize.innerWidth)
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojibookListView()
    }
}
