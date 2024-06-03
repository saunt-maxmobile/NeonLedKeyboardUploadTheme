//
//  CustomStyleProvider.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 04/12/2023.
//

import Foundation
import UIKit

class CustomStyleProvider: StandardKeyboardStyleProvider {
    
    var button: KeyboardStyle.Button?
    var shiftButton: KeyboardStyle.Background?
    var backspaceButton: KeyboardStyle.Background?
    var keyboardTypeButton: KeyboardStyle.Background?
    var spaceButton: KeyboardStyle.Background?
    var primaryButton: KeyboardStyle.Background?
    var emojiButton: KeyboardStyle.Background?
    var actionCallout: KeyboardStyle.ActionCallout?
    var inputCallout: KeyboardStyle.InputCallout?
    
    init(
        button: KeyboardStyle.Button? = nil,
        shiftButton: KeyboardStyle.Background? = nil,
        backspaceButton: KeyboardStyle.Background? = nil,
        keyboardTypeButton: KeyboardStyle.Background? = nil,
        spaceButton: KeyboardStyle.Background? = nil,
        primaryButton: KeyboardStyle.Background? = nil,
        emojiButton: KeyboardStyle.Background? = nil,
        actionCallout: KeyboardStyle.ActionCallout? = nil,
        inputCallout: KeyboardStyle.InputCallout? = nil,
        keyboardContext: KeyboardContext
    ) {
        super.init(keyboardContext: keyboardContext)
        
        self.button = button
        self.shiftButton = shiftButton
        self.backspaceButton = backspaceButton
        self.keyboardTypeButton = keyboardTypeButton
        self.spaceButton = spaceButton
        self.primaryButton = primaryButton
        self.emojiButton = emojiButton
        self.actionCallout = actionCallout
        self.inputCallout = inputCallout
    }
    
    override func buttonStyle(
        for action: KeyboardAction,
        isPressed: Bool
    ) -> KeyboardStyle.Button {
        var style = super.buttonStyle(for: action, isPressed: isPressed)
        if let button = button {
            /// shift,  backspace, keyboardType, space, primary
            style = button
            
            if style.shapeType == .CIRCLE {
                switch action {
                case .primary(_), .space:
                    style.shapeType = .ROUNDEDSQUARE
                    break
                default:
                    break
                }
                
            }
            
            switch action {
            case .shift(currentCasing: _):
                if let shiftButton {
                    style.background = shiftButton
                }
            case .backspace:
                if let backspaceButton {
                    style.background = backspaceButton
                }
            case .keyboardType(.emojis):
                if let emojiButton {
                    style.background = emojiButton
                }
            case .keyboardType(_):
                if let keyboardTypeButton {
                    style.background = keyboardTypeButton
                }
            case .space:
                if let spaceButton {
                    style.background = spaceButton
                }
            case .primary(_):
                if let primaryButton {
                    style.background = primaryButton
                }
            case .nextLocale:
                if let emojiButton {
                    style.background = emojiButton
                }
            default:
                break
            }
            
        }
        
        return style
    }
    
    override var actionCalloutStyle: KeyboardStyle.ActionCallout {
        var style = super.actionCalloutStyle
        
        if let actionCallout = actionCallout {
            style = actionCallout
        }
        
        return style
    }
    
    override var inputCalloutStyle: KeyboardStyle.InputCallout {
        var style = super.inputCalloutStyle
        
        if let inputCallout = inputCallout {
            style = inputCallout
        }
        
        return style
    }
}
