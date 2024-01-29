//
//  NeonLedKeyboardUploadThemeApp.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import SwiftUI
import FirebaseCore

@main
struct NeonLedKeyboardUploadThemeApp: App {
    
    init() {
        FirebaseApp.configure()
    }
    var body: some Scene {
        WindowGroup {
            ContentView()
        }
    }
}
