//
//  GradientPhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var cuteRainbow: Theme = .init(
        id: "43b753fa-2559-4058-b6f6-a55f4a1b9e38",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rainbow1",
        background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        preview: .image(UIImage(named: "Keyboard.Key.Rainbow1.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRainbow"
    )
    
}

struct CuteTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .cuteRainbow

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .cuteRainbow
            
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
            
            controller.state.keyboardContext.setLocale(.kurdish_sorani_pc)
            return controller
        }()
        
        var emojiKeyboard: some View {
            Button {
                controller.state.keyboardContext.keyboardType = .alphabetic(.lowercased)
            } label: {
                Color.red
                    .overlay(Text("Not implemented"))
            }
        }
        
        var keyboard: some View {
            SystemKeyboard(
                state: controller.state,
                services: controller.services,
                themeObject: [],
                neonPermission: theme.neonPermission ?? .init(),
                neonLinearAnimation: theme.neonLinearAnimation ?? .none,
                animationValueObjects: theme.buttonNeonAnimation,
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { $0.view }
            )
        }

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
                        buttonContent: { param in
                            switch param.item.action {
                            case .backspace:
                                Image(systemName: "trash").foregroundColor(Color.red)
                            default: param.view
                            }
                        },
                        buttonView: { param in
                            switch param.item.action {
                            case .space:
                                Text("This is a space bar replacement")
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(.center)
                            default: param.view
                            }
                        },
                        emojiKeyboard: { _ in
                            emojiKeyboard
                        },
                        toolbar: { $0.view }
                    )
                }
                .background(theme.background?.backgroundView)
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
