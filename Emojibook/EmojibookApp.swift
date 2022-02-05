//
//  EmojibookApp.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import SwiftUI

@main
struct EmojibookApp: App {

    @NSApplicationDelegateAdaptor(AppDelegate.self) var appDelegate

    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
