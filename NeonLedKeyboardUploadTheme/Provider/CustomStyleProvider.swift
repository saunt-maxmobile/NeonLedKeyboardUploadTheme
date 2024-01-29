//
//  CustomStyleProvider.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import Foundation
import UIKit

class CustomStyleProvider: StandardKeyboardStyleProvider {
    
    var button: KeyboardStyle.Button?
    var actionCallout: KeyboardStyle.ActionCallout?
    var inputCallout: KeyboardStyle.InputCallout?
    
    init(button: KeyboardStyle.Button? = nil, actionCallout: KeyboardStyle.ActionCallout? = nil, inputCallout: KeyboardStyle.InputCallout? = nil, keyboardContext: KeyboardContext) {
        super.init(keyboardContext: keyboardContext)
        
        self.button = button
        self.actionCallout = actionCallout
        self.inputCallout = inputCallout
    }
    
    override func buttonStyle(
        for action: KeyboardAction,
        isPressed: Bool
    ) -> KeyboardStyle.Button {
        var style = super.buttonStyle(for: action, isPressed: isPressed)
        if let button = button {
            /// space, shift, primary, backspace, keyboardType
            style = button
            
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
