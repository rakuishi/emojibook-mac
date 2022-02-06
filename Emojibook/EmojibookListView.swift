//
//  EmojibookListView.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import SwiftUI

struct EmojibookListViewConst {
    static let gridItemSize: CGFloat = 50
    static let gridItemCount: Int = 5
    
    static let width: CGFloat = gridItemSize * CGFloat(gridItemCount)
    static let height: CGFloat = 200
    static let merginHorizontal: CGFloat = 24  // = NSMenuItem's separator padding

    static let menuItemWidth = width + merginHorizontal
    static let menuItemHeight = height
}

struct EmojibookListView: View {
    var colums: [GridItem] = Array(repeating: GridItem(.flexible(minimum: EmojibookListViewConst.gridItemSize), spacing: 0, alignment: .leading), count: EmojibookListViewConst.gridItemCount)
    
    var emojis: [Emoji] = Emoji.galleries()
    
    var body: some View {
        ScrollView(showsIndicators: false) {
            LazyVGrid(columns: colums, alignment: .leading, spacing: 0) {
                ForEach(emojis) { emoji in
                    Group {
                        Button(emoji.character) {
                            copyEmoji(emoji: emoji)
                        }
                        .font(.system(size: 36))
                        .frame(width: EmojibookListViewConst.gridItemSize, height: EmojibookListViewConst.gridItemSize)
                        .buttonStyle(BorderlessButtonStyle())
                    }
                }
            }

            .frame(width: EmojibookListViewConst.width)
        }
    }
}

private func copyEmoji(emoji: Emoji) {
    NSPasteboard.general.clearContents()
    NSPasteboard.general.setString(emoji.character, forType: .string)
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        EmojibookListView()
    }
}
