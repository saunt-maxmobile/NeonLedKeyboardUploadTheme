//
//  InputSetBasedKeyboardLayoutProvider.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2022-12-29.
//  Copyright © 2022-2023 Daniel Saidi. All rights reserved.
//

import Foundation

/**
 This layout provider maps the provided input sets to device
 specific keyboard layouts.
 
 The provider returns layouts with the same configuration as
 standard QWERTY keyboards. This is a layout that is used by
 many native keyboards, e.g. English.
 
 You can inherit and customize this class to change any part
 of the provided layout. You can also replace the iPhone and
 iPad specific providers.
 */
open class InputSetBasedKeyboardLayoutProvider: BaseKeyboardLayoutProvider, KeyboardLayoutProviderProxy, LocalizedService {

    /**
     Create an input set-based keyboard layout provider.
     
     - Parameters:
       - alphabeticInputSet: The alphabetic input set to use, by default ``InputSet/qwerty``.
       - numericInputSet: The numeric input set to use, by default ``InputSet/standardNumeric(currency:)``.
       - symbolicInputSet: The symbolic input set to use, by default ``InputSet/standardSymbolic(currencies:)``.
     */
    public override init(
        alphabeticInputSet: InputSet = .qwerty,
//        alphabeticInputSet: InputSet = .special,
        numericInputSet: InputSet = .standardNumeric(currency: "$"),
        symbolicInputSet: InputSet = .standardSymbolic(currencies: ["€", "£", "¥"])
    ) {
        self.localeKey = KeyboardLocale.english.id
        super.init(
            alphabeticInputSet: alphabeticInputSet,
            numericInputSet: numericInputSet,
            symbolicInputSet: symbolicInputSet
        )
    }
    
    public init(
        localeKey: String,
        alphabeticInputSet: InputSet = .qwerty,
//        alphabeticInputSet: InputSet = .special,
        numericInputSet: InputSet = .standardNumeric(currency: "$"),
        symbolicInputSet: InputSet = .standardSymbolic(currencies: ["€", "£", "¥"])
    ) {
        self.localeKey = localeKey
        super.init(
            alphabeticInputSet: alphabeticInputSet,
            numericInputSet: numericInputSet,
            symbolicInputSet: symbolicInputSet
        )
    }

    /// The locale identifier.
//    public var localeKey = KeyboardLocale.english.id
    public var localeKey: String

    /// The layout provider to use for iPad devices.
    public lazy var iPadProvider: KeyboardLayoutProvider = iPadKeyboardLayoutProvider(
        alphabeticInputSet: alphabeticInputSet,
        numericInputSet: numericInputSet,
        symbolicInputSet: symbolicInputSet
    )

    /// The layout provider to use for iPhone devices.
    public lazy var iPhoneProvider: KeyboardLayoutProvider = iPhoneKeyboardLayoutProvider(
        alphabeticInputSet: alphabeticInputSet,
        numericInputSet: numericInputSet,
        symbolicInputSet: symbolicInputSet
    )

    /// The layout keyboard to use for the provided context.
    open override func keyboardLayout(for context: KeyboardContext) -> KeyboardLayout {
        keyboardLayoutProvider(for: context)
            .keyboardLayout(for: context)
    }
}
