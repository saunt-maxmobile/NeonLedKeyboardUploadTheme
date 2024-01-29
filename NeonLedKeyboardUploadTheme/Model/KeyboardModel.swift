//
//  KeyboardModel.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

final public class KeyboardModel: ObservableObject {
    @Published var value: KeyboardValue = KeyboardValue()
}

struct KeyboardValue {
    
    var enableKeyboard: Bool = false
    
    var autoCapital: Bool = false
    
    var autoSpace: Bool = false
    
    var doubleSpacePeriod: Bool = false
    
    var autoComplete: Bool = false
    
    var showSuggestion: Bool = false
    
    var showSpecialKey: Bool = false
    
    var keyboardLocale: KeyboardLocale = .english
    
//    var showPopupKey: Bool {
//        set {
//            sharedDefault.set(newValue, forKey: Constant.SHOW_POPUP_PRESS_KEY)
//        }
//        get {
//            sharedDefault.bool(forKey: Constant.SHOW_POPUP_PRESS_KEY)
//        }
//    }
    
    var keySound: Bool = false
}
