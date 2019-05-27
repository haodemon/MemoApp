//
//  StatusMenuController.swift
//  MemoApp
//
//  Created by Alfred S. on 26/05/2019.
//  Copyright © 2019 haodemon. All rights reserved.
//

import Cocoa

class StatusMenuController: NSObject {
    @IBOutlet weak var statusMenu: NSMenu!
    let statusItem = NSStatusBar.system.statusItem(
        withLength: NSStatusItem.variableLength)

    override func awakeFromNib() {
        statusItem.button?.title = "⚇"
        statusItem.menu = statusMenu
    }

    @IBAction func quitClicked(_ sender: NSMenuItem) {
        NSApplication.shared.terminate(self)
    }

    @IBAction func sendNotificationClicked(_ sender: NSMenuItem) {
        NotificationService.send(title: "Your Notification",
                                 subtitle: "All done!",
                                 informativeText: nil,
                                 soundName: nil)
    }
}
