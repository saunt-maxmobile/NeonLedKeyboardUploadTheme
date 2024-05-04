//
//  AppConfiguration.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 22/01/2024.
//

import Foundation

final class AppConfiguration: NSObject {
    static let shared: AppConfiguration = AppConfiguration()
    
    let themeSectionJson = "ThemeSection.json"
}

class Constant {
    static let APP_GROUP = "group.com.maxmobile.NeonLedKeyboardUploadTheme"
    static let KEYBOARD_EXTENSION = "com.maxmobile.NeonLedKeyboard.NeonLedKeyboardExtensionUploadTheme"
    static let SHOW_SPECIAL_KEY = "SHOW_SPECIAL_KEY" 
}
