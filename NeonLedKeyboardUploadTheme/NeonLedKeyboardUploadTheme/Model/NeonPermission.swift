//
//  NeonPermission.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

public struct NeonPermission: Codable {
    var disableNeonCharacter: Bool
    var disableNeonBorder: Bool
    var disableNeonButton: Bool
    
    public init(disableNeonCharacter: Bool = false, disableNeonBorder: Bool = false, disableNeonButton: Bool = false) {
        self.disableNeonCharacter = disableNeonCharacter
        self.disableNeonBorder = disableNeonBorder
        self.disableNeonButton = disableNeonButton
    }
}
