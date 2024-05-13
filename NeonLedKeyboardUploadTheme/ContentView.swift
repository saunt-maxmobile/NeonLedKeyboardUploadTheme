//
//  ContentView.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import SwiftUI

struct ContentView: View {
    
    var configDataStorage = ConfigDataStorage.shared
    
    var theme: Theme = .cuteRainbowRabbit

    var controller: KeyboardInputViewController = {
        let controller = KeyboardInputViewController.preview
        controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
        ]
        
        let theme: Theme = .cuteRainbowRabbit
        
        controller.services.styleProvider = CustomStyleProvider(
            button: theme.button,
            shiftButton: theme.shiftButton,
            backspaceButton: theme.backspaceButton,
            keyboardTypeButton: theme.keyboardTypeButton,
            spaceButton: theme.spaceButton,
            primaryButton: theme.primaryButton,
            emojiButton: theme.emojiButton,
            actionCallout: theme.actionCallout,
            inputCallout: theme.inputCallout,
            keyboardContext: controller.state.keyboardContext
        )
        
        controller.state.keyboardContext.setLocale(.english)
        return controller
    }()
    
    var body: some View {
        VStack(spacing: 10) {
            Group {
                SystemKeyboard(
                    state: controller.state,
                    services: controller.services,
                    themeObject: [],
                    neonPermission: theme.neonPermission ?? .init(),
                    neonLinearAnimation: theme.neonLinearAnimation ?? .none,
                    animationValueObjects: theme.buttonNeonAnimation,
                    effect: theme.effect,
                    specialKey: theme.specialKey,
                    buttonContent: { $0.view },
                    buttonView: { $0.view },
                    emojiKeyboard: { $0.view },
                    toolbar: { $0.view }
                )
            }
            .background(theme.background?.backgroundView)
        }
    }
}

#Preview {
    ContentView()
}
