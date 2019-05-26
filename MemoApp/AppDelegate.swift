//
//  AppDelegate.swift
//  MemoApp
//
//  Created by Alfred S. on 26/05/2019.
//  Copyright © 2019 haodemon. All rights reserved.
//

import Cocoa

@NSApplicationMain
class AppDelegate: NSObject, NSApplicationDelegate {

    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(withLength: NSStatusItem.variableLength)
    
    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }

    func applicationDidFinishLaunching(_ aNotification: Notification) {
        statusItem.button?.title = "⚇"
        statusItem.menu = statusMenu
    }

    func applicationWillTerminate(_ aNotification: Notification) {
        // Insert code here to tear down your application
    }


}

// ⚇    U+2687    &#9863;
// Black circle with white dot right    ⚈    U+2688    &#9864;
// Black circle with two white dots    ⚉

