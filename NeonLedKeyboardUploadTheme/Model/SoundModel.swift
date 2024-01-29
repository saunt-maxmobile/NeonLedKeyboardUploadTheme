//
//  SoundModel.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

struct SoundModel: Codable, Equatable {
    public var name: String
    public var volume: Float
    public var specialSoundCharacter: Bool
    public var background: String?
    
    public init(name: String, volume: Float, specialSoundCharacter: Bool = false, background: String? = nil) {
        self.name = name
        self.volume = volume
        self.specialSoundCharacter = specialSoundCharacter
        self.background = background
    }
}
