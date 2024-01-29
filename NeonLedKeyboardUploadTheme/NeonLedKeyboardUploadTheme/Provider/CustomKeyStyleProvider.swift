//
//  CustomKeyStyleProvider.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

class CustomKeyStyleProvider: StandardKeyboardStyleProvider {
    
    var buttonStyle: KeyboardStyle.Button?
    var actionCallout: KeyboardStyle.ActionCallout?
    var inputCallout: KeyboardStyle.InputCallout?
    
    init(buttonStyle: KeyboardStyle.Button? = nil,
         actionCallout: KeyboardStyle.ActionCallout = .standard,
         inputCallout: KeyboardStyle.InputCallout = .standard,
         keyboardContext: KeyboardContext) {
        super.init(keyboardContext: keyboardContext)
        self.actionCallout = actionCallout
        self.inputCallout = inputCallout
        self.buttonStyle = buttonStyle
    }
    
    override func buttonStyle(
        for action: KeyboardAction,
        isPressed: Bool
    ) -> KeyboardStyle.Button {
        var style = super.buttonStyle(for: action, isPressed: isPressed)
        
        if let buttonStyle = buttonStyle {
            style = buttonStyle
            
            if style.shapeType == .CIRCLE {
                switch action {
                case .primary(_), .space:
                    style.shapeType = .CIRCLESHAPE
                    break
                default:
                    break
                }
                
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
