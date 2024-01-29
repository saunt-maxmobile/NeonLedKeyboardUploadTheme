//
//  Emoji+KeyboardWrapper.swift
//  KeyboardKit
//
//  Created by Daniel Saidi on 2023-10-26.
//  Copyright © 2023 Daniel Saidi. All rights reserved.
//

import SwiftUI

public extension Emoji {
    
    /**
     This is used as a view eraser for the emoji keyboard to
     make it possible to inject it with the standard builder
     in the system keyboard initializer.
     */
    struct KeyboardWrapper: View {
        
        init(
            layout: KeyboardLayout,
            actionHandler: KeyboardActionHandler,
            keyboardContext: KeyboardContext,
            calloutContext: CalloutContext?,
            styleProvider: KeyboardStyleProvider
            
        ) {
            self.layout = layout
            self.layoutConfig = .standard(for: keyboardContext)
            self.actionHandler = actionHandler
            self.styleProvider = styleProvider
            self.calloutContext = calloutContext
            self.keyboardContext = keyboardContext
        }
        
        private let layout: KeyboardLayout
        private let layoutConfig: KeyboardLayout.Configuration
        private let actionHandler: KeyboardActionHandler
        private let styleProvider: KeyboardStyleProvider
        private let calloutContext: CalloutContext?
                    
        @State private var currentEmojiTab: EmojiTab = .smiley
        
        @ObservedObject
        var keyboardContext: KeyboardContext
        
        var keyboardTypeButton: KeyboardLayout.Item {
            let button = layout.tryCreateBottomRowItem(for: .keyboardType(.alphabetic(.uppercased)))
            
            return button!
        }
        
        var backspaceButton: KeyboardLayout.Item {
            let button = layout.tryCreateBottomRowItem(for: .backspace)
            
            return button!
        }
        
        private var grids: [GridItem] = [
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible()),
            GridItem(.flexible())
        ]
        
        public var body: some View {
            VStack {
                emojiKeyboard
                tabbar
            }
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 4 + 50)
        }
        
        private var tabbar: some View {
            HStack {
                KeyboardButton.Content(action: keyboardTypeButton.action, styleProvider: styleProvider, keyboardContext: keyboardContext)
                    .frame(maxHeight: .infinity)
                    .onTapGesture {
                        actionHandler.handle(.press, on: keyboardTypeButton.action)
                    }
                
                ForEach(EmojiTab.allCases, id: \.self) { tab in
                    Text(tab.icon)
                        .padding(.horizontal, 3)
                        .frame(maxHeight: .infinity)
                        .onTapGesture {
                            currentEmojiTab = tab
                        }
                }
                
                KeyboardButton.Content(action: backspaceButton.action, styleProvider: styleProvider, keyboardContext: keyboardContext)
                    .frame(maxHeight: .infinity)
                    .onTapGesture {
                        actionHandler.handle(.press, on: backspaceButton.action)
                    }
                    
            }
            .frame(height: layoutConfig.rowHeight)
        }
        
        private var emojiKeyboard: some View {
            VStack {
                Text(currentEmojiTab.name)
                    .textCase(.uppercase)
                    .font(.system(size: 16))
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollViewReader(content: { proxy in
                    ScrollView(.horizontal, showsIndicators: false) {
                        LazyHGrid(rows: grids, content: {
                            ForEach(currentEmojiTab.emoji.chars, id: \.self) { item in
                                Text(item)
                                    .onTapGesture {
                                        actionHandler.handle(.press, on: .character(item))
                                        actionHandler.handle(.character(item))
                                    }
                            }
                        })
                        .padding(.horizontal)
                        .frame(maxWidth: .infinity, maxHeight: .infinity)
                    }
                })
                
            }
            .frame(maxWidth: .infinity)
            .frame(height: layoutConfig.rowHeight * 3 + 50)
            
        }
    }
}


#Preview(body: {
    VStack {
        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            return controller
        }()
        
        Emoji.KeyboardWrapper(
            layout: controller.services.layoutProvider.keyboardLayout(for: controller.state.keyboardContext),
            actionHandler: controller.services.actionHandler,
            keyboardContext: controller.state.keyboardContext,
            calloutContext: controller.state.calloutContext,
            styleProvider: controller.services.styleProvider)
    }
    
})
