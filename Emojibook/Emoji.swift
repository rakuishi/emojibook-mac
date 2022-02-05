//
//  Emoji.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import Foundation

struct Emoji: Identifiable {
    
    let id = UUID()
    let character: String
    
    init(character: String) {
        self.character = character
    }
    
    static func galleries() -> [Emoji] {
      return [
        Emoji(character: "👾"),
        Emoji(character: "🎨"),
        Emoji(character: "🥑"),
        Emoji(character: "🤯"),
        Emoji(character: "😀"),
        Emoji(character: "🍟"),
        Emoji(character: "🐣"),
        Emoji(character: "🌭"),
        Emoji(character: "🏓"),
        Emoji(character: "🍕"),
        Emoji(character: "🧩"),
        Emoji(character: "🚀"),
        Emoji(character: "📌"),
        Emoji(character: "🥰"),
        Emoji(character: "😈"),
        Emoji(character: "🤩"),
        Emoji(character: "🗽"),
        Emoji(character: "🌻"),
        Emoji(character: "🧸"),
        Emoji(character: "🎾"),
        Emoji(character: "🗼"),
        Emoji(character: "🦄"),
        Emoji(character: "🍉"),
        Emoji(character: "🚴🏽‍♀️"),
        Emoji(character: "👩🏽‍💻"),
      ]
    }
}
