//
//  Notification.swift
//  MemoApp
//
//  Created by Alfred S. on 26/05/2019.
//  Copyright © 2019 haodemon. All rights reserved.
//

import Cocoa

class NotificationService: NSObject {
    private static let notificationCenter = NSUserNotificationCenter.default

    static func send(title: String,
                     subtitle: String?,
                     informativeText: String?,
                     soundName: String? = NSUserNotificationDefaultSoundName) {
        let notification = NSUserNotification()
        notification.title = title
        notification.subtitle = subtitle
        notification.informativeText = informativeText
        notification.soundName = soundName
        notificationCenter.deliver(notification)
    }
}
