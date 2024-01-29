//
//  InputSuggestion.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

public protocol InputSuggestion {
    var suggest: [String:String] { get }
}

extension KeyboardLocale {
    func getInputSuggection() -> InputSuggestion? {
        switch self {
        default: return nil
        }
    }
}

extension String {
    func getComponent(for character: String) -> [String] {
        return self.components(separatedBy: character)
    }
}
