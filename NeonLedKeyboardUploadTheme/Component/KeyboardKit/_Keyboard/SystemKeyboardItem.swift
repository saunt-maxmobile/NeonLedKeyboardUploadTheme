//
//  SystemKeyboardItem.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2020-12-02.
//  Copyright © 2020-2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

/**
 This view renders button item for a ``SystemKeyboard``.
 */
public struct SystemKeyboardItem<Content: View>: View {
    
//    let sharedDefault = UserDefaults(suiteName: Constant.APP_GROUP)!
    
    /**
     Create a system keyboard button row item.
     
     - Parameters:
     - item: The layout item to use within the item.
     - actionHandler: The button style to apply.
     - styleProvider: The style provider to use.
     - keyboardContext: The keyboard context to which the item should apply.,
     - calloutContext: The callout context to affect, if any.
     - keyboardWidth: The total width of the keyboard.
     - inputWidth: The input width within the keyboard.
     - content: The content view to use within the item.
     */
    init(
        item: KeyboardLayout.Item,
        row: Int = 0,
        column: Int = 0,
        specialKey: String? = nil,
        actionHandler: KeyboardActionHandler,
        styleProvider: KeyboardStyleProvider,
        keyboardContext: KeyboardContext,
        calloutContext: CalloutContext?,
        keyboardWidth: CGFloat,
        inputWidth: CGFloat,
        overlayKeyboard: Bool,
        neonPermission: NeonPermission,
        enableAction: Bool,
        content: Content
    ) {
        self.item = item
        self.row = row
        self.column = column
        self.specialKey = specialKey
        self.actionHandler = actionHandler
        self.styleProvider = styleProvider
        self._keyboardContext = ObservedObject(wrappedValue: keyboardContext)
        self.calloutContext = calloutContext
        self.keyboardWidth = keyboardWidth
        self.inputWidth = inputWidth
        self.content = content
        
        self.overlayKeyboard = overlayKeyboard
        self.neonPermission = neonPermission
        self.enableAction = enableAction
    }
    
    private let item: KeyboardLayout.Item
    private let row: Int
    private let column: Int
    private let specialKey: String?
    private let actionHandler: KeyboardActionHandler
    private let styleProvider: KeyboardStyleProvider
    private let calloutContext: CalloutContext?
    private let keyboardWidth: CGFloat
    private let inputWidth: CGFloat
    private let enableAction: Bool
    private let content: Content
    
    private let overlayKeyboard: Bool
    private let neonPermission: NeonPermission
    
    @ObservedObject
    private var keyboardContext: KeyboardContext
    
    @State
    private var isPressed = false
    
    @State private var specialCharacter: String = ""
    
    public var body: some View {
        Group {
            if enableAction {
                content
                    .opacity(contentOpacity)
                    .animation(.default, value: keyboardContext.isSpaceDragGestureActive)
                    .keyboardLayoutItemSize(
                        for: item,
                        rowWidth: keyboardWidth,
                        inputWidth: inputWidth)
                    .keyboardButton(
                        for: item.action,
                        style: buttonStyle,
                        actionHandler: actionHandler,
                        keyboardContext: keyboardContext,
                        calloutContext: calloutContext,
                        edgeInsets: item.edgeInsets,
                        isPressed: $isPressed
                    )
            } else {
                content
                    .opacity(contentOpacity)
                    .animation(.default, value: keyboardContext.isSpaceDragGestureActive)
                    .keyboardLayoutItemSize(
                        for: item,
                        rowWidth: keyboardWidth,
                        inputWidth: inputWidth)
                    .keyboardButtonStyle(buttonStyle)
                    .padding(item.edgeInsets)
                    .contentShape(Rectangle())
            }
        }
        .overlay(alignment: .topTrailing) {
            Text("\(specialCharacter)")
                .font(.system(size: 12))
                .foregroundColor(buttonStyle.foregroundColor)
                .offset(x: -5, y: 5)
        }
    }
    
    private var contentOpacity: Double {
        keyboardContext.isSpaceDragGestureActive ? 0 : 1
    }
    
    private var buttonStyle: KeyboardStyle.Button {
        var style = item.action.isSpacer ? .spacer : styleProvider.buttonStyle(for: item.action, isPressed: isPressed)
        
        let opacity = style.background?.opacity ?? 0
        
        if case .character = item.action, let _ = specialKey {
            if let image = UIImage(named: getImageOfIndex()) {
                style.background = .image(image.pngData() ?? Data(), contentMode: .fit)
            } else {
                style.background = .image(UIImage(named: getNormalImage())?.pngData() ?? Data(), contentMode: .fit)
            }
        }
        
        style.background?.opacity = opacity
        
        if overlayKeyboard {
            if neonPermission.disableNeonCharacter && neonPermission.disableNeonButton && !neonPermission.disableNeonBorder {
                style.background = .color(.clear)
                style.foregroundColor = .clear
            } else
            if !neonPermission.disableNeonCharacter && !neonPermission.disableNeonButton && neonPermission.disableNeonBorder {
                style.background = .color(.clear)
                style.foregroundColor = .clear
            } else
            if neonPermission.disableNeonCharacter {
                if !neonPermission.disableNeonButton {
                    style.background = .color(.clear)
                }
                
                if !neonPermission.disableNeonBorder {
                    style.borderColor = .clear
                }
            } else {
                if neonPermission.disableNeonButton {
                    style.background = .color(.clear)
                }
                
                if neonPermission.disableNeonBorder {
                    style.borderColor = .clear
                }
            }
        }
        
        return style
    }
    
    private func getImageOfIndex() -> String {
        guard let specialKey else { return "" }
        return "\(specialKey).\(row).\(column)"
    }
    
    private func getNormalImage() -> String {
        return "\(specialKey ?? "").Normal"
    }
}
