//
//  AppDelegate.swift
//  Emojibook
//
//  Created by Koichiro OCHIISHI on 2022/02/05.
//

import Foundation
import SwiftUI

class AppDelegate: NSObject, NSApplicationDelegate {

    var statusItem: NSStatusItem!
    
    func applicationDidFinishLaunching(_ notification: Notification) {

        statusItem = NSStatusBar.system.statusItem(withLength: CGFloat(NSStatusItem.variableLength))
  
        let image = NSImage(systemSymbolName: "face.smiling", accessibilityDescription: nil)
        image?.isTemplate = true
        statusItem.button?.image = image
        
        statusItem.menu = {
            let menu = NSMenu()

            let hostingView = NSHostingView(rootView: ContentView())
            hostingView.setFrameSize(.init(width: ContentViewSize.width, height: ContentViewSize.height))
            let contentViewMenuItem = NSMenuItem.init()
            contentViewMenuItem.view = hostingView
            menu.addItem(contentViewMenuItem)

            menu.addItem(.separator())

            let quitMenuItem = NSMenuItem.init(title: "Quit Emojibook", action: #selector(quit), keyEquivalent: "q")
            menu.addItem(quitMenuItem)
            
            return menu
        }()
    }
    
    @objc private func quit() {
        NSRunningApplication.current.terminate()
    }
}
