//
//  GradientTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var gradientPink: Theme = .init(
        id: "1475559E-760C-473A-A42A-81EA73E77AC8",
        button: .init(
            background: .color(Color.white.opacity(0.3)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [Color(hex: "FFDA50"), Color(hex: "FF46DA")]),
        
        preview: .image(UIImage(named: "gradientPinkPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPink"
    )
    
    static var gradientGrass: Theme = .init(id: "73A24440-687B-49C8-B91C-20074D8A3E37",
        button: .init(
            background: .color(Color.white.opacity(0.3)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [Color(red: 0.95, green: 0.95, blue: 0.28), Color(red: 0.19, green: 0.71, blue: 0.42)]),
        
        preview: .image(UIImage(named: "gradientGrassPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientGrass"
    )
    
    static var gradientSunny: Theme = .init(id: "B3E7540D-E7EC-4F00-9A8A-E7FA729809B3",
        button: .init(
            background: .color(Color.white.opacity(0.3)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [Color(red: 1, green: 0.84, blue: 0.27), Color(red: 1, green: 0.6, blue: 0.3)]),
        
        preview: .image(UIImage(named: "gradientSunnyPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientSunny"
    )
    
    static var gradientPurple: Theme = .init(id: "AD885F1E-A16D-41F9-9A33-2A07956C810C",
        button: .init(
            background: .color(.white.opacity(0.2)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .init(backgroundGradient: [Color(red: 0.96, green: 0.17, blue: 0.52), Color(red: 0.54, green: 0.24, blue: 1)]),
        
        preview: .image(UIImage(named: "gradientPurplePreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPurple"
    )
    
    static var gradientSky: Theme = .init(id: "89C5049E-6E8D-4E64-B84D-96FE8BAE758D",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [
            Color(red: 0.36, green: 0.96, blue: 1),
            Color(red: 0.31, green: 0.68, blue: 1)
        ]),
        
        preview: .image(UIImage(named: "gradientSkyPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientSky"
    )
    
    static var gradientSea: Theme = .init(id: "3C40E4F1-7DC7-4935-9419-708179140814",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [
            Color(red: 0.35, green: 0.63, blue: 1),
            Color(red: 0.54, green: 0.07, blue: 1)
        ]),
        
        preview: .image(UIImage(named: "gradientSeaPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientSea"
    )
    
    static var gradientGreen: Theme = .init(id: "73B09851-033D-442B-9773-007DFC58B88B",
        button: .init(
            background: .color(.white),
            foregroundColor: Color(hex: "#295300"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .init(backgroundGradient: [
            Color(red: 1, green: 0.96, blue: 0.21),
            Color(red: 0.5, green: 1, blue: 0.01)
        ]),
        
        preview: .image(UIImage(named: "gradientGreenPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientGreen"
    )
}

struct Gradient_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .gradientGreen

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .gradientGreen
            
            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
            
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
