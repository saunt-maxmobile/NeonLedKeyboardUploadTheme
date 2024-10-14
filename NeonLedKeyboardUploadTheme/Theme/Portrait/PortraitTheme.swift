//
//  PortraitTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 19/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var portraitBossDog: Theme = .init(
        id: "27F09144-7E6F-4119-A1B3-452D6A66BC5C",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Rye-Regular", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitBossDog")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
//        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        neonLinearAnimation: .radial([
            Color(hex: "FFD746"),
            Color(hex: "FFFFFF"),
            Color(hex: "4200FF"),
            Color(hex: "00F0FF"),
            .clear
        ]),
        preview: .image(UIImage(named: "portraitBossDogPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitBossDog",
        iconColor: Color(hex: "#00F0FF"),
        requiredPremium: false
    )
    
    static var portraitLionKing: Theme = .init(
        id: "1B277E27-3EA1-4A05-8C54-2D9D5AA60EE9",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00F0FF"),
            font: .custom("Poppins-Medium", size: 18),
            cornerRadius: 6,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "portraitLionKing")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonCharacter: true),
        neonLinearAnimation: .radial([
            Color(hex: "00F0FF"),
            Color(hex: "FF00F5"),
            Color(hex: "FFD746"),
            Color(hex: "FFFFFF"),
        ]),
        preview: .image(UIImage(named: "portraitLionKingPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitLionKing",
        iconColor: Color(hex: "#00F0FF"),
        requiredPremium: false
    )
    
    static var portraitRobotic: Theme = .init(
        id: "793F0F2F-01DF-49D4-8900-032CD2DF111A",
        button: .init(
            background: .color(Color(hex: "#4200FF").opacity(0.15)),
            foregroundColor: .white,
            font: .custom("SairaStencilOne-Regular", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitRobotic")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            Color(hex: "#FF00D6"),
            Color(hex: "#00F0FF"),
        ]),
        preview: .image(UIImage(named: "portraitRoboticPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitRobotic",
        iconColor: Color(hex: "#00F0FF"),
        requiredPremium: false
    )
    
    static var portraitNeonCat: Theme = .init(
        id: "93898696-C9B9-4990-AFF1-CF7310B1C9B8",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Poppins-Medium", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitNeonCat")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        neonLinearAnimation: .radial([
            Color(hex: "FF00D6"),
            Color(hex: "#FFFFFF"),
            Color(hex: "00F0FF"),
            .clear
        ]),
        preview: .image(UIImage(named: "portraitNeonCatPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitNeonCat",
        iconColor: Color(hex: "#00F0FF"),
        requiredPremium: false
    )
    
    static var portraitNeonDog: Theme = .init(
        id: "9AED4A01-037E-4A24-BF4B-67DEB69F5EE9",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Poppins-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "portraitNeonDog")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonCharacter: true),
        neonLinearAnimation: .radial([
            Color(hex: "00F0FF"),
            Color(hex: "FF00F5"),
            Color(hex: "FFD746"),
            Color(hex: "FF00F5"),
        ]),
        preview: .image(UIImage(named: "portraitNeonDogPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitNeonDog",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var portraitLlama: Theme = .init(
        id: "90C90D9E-383B-48D7-BC48-24BAA0EDFE56",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("SairaStencilOne-Regular", size: 18),
            cornerRadius: 10,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitLlama")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        durationAnimation: 6,
        neonLinearAnimation: .LTR([
            Color(hex: "FF00D6"),
            Color(hex: "FFE600"),
            Color(hex: "00F0FF"),
            Color(hex: "000AFF"),
            Color(hex: "FF00D6"),
        ], 3),
        preview: .image(UIImage(named: "portraitLlamaPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitLlama",
        iconColor: Color(hex: "#FF00D6")
    )
    
    static var portraitNeonTiger: Theme = .init(
        id: "D7F62533-096E-48A9-A774-58AF4E537D90",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("SairaStencilOne-Regular", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "portraitNeonTiger")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .LTR([
            Color(hex: "46FF64"),
            Color(hex: "FFDE00"),
            Color(hex: "FD0000"),
            Color(hex: "FF00F5"),
            Color(hex: "00F0FF"),
            Color(hex: "1400FF"),
            Color(hex: "46FF64"),
        ], 5),
        preview: .image(UIImage(named: "portraitNeonTigerPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitNeonTiger",
        iconColor: Color(hex: "#32C2FD")
    )
    
    static var portraitMonkeyFashion: Theme = .init(
        id: "D6078748-72D6-404F-84B7-64AD04CD52E4",
        button: .init(
            background: .color(Color(hex: "#FFDE00").opacity(0.2)),
            foregroundColor: .white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitMonkeyFashion")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            Color(hex: "#FF00F5"),
            Color(hex: "#FFFFFF"),
            Color(hex: "#00FFFF"),
        ]),
        preview: .image(UIImage(named: "portraitMonkeyFashionPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "portraitMonkeyFashion",
        iconColor: Color(hex: "#00FFFF")
    )
}

//struct PortraitTheme_Previews: PreviewProvider {
//
//    struct Preview: View {
//        
//        var theme: Theme = .portraitMonkeyFashion
//        
//        var controller: KeyboardInputViewController = {
//            let controller = KeyboardInputViewController.preview
//            controller.state.autocompleteContext.suggestions = [
//                //                .init(text: "Foo"),
//                //                .init(text: "Bar", isAutocorrect: true),
//                //                .init(text: "Baz")
//            ]
//            
//            let theme: Theme = .portraitMonkeyFashion
//            
//            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
//            
//            controller.state.keyboardContext.setLocale(.kurdish_sorani_pc)
//            return controller
//        }()
//        
//        var emojiKeyboard: some View {
//            Button {
//                controller.state.keyboardContext.keyboardType = .alphabetic(.lowercased)
//            } label: {
//                Color.red
//                    .overlay(Text("Not implemented"))
//            }
//        }
//        
//        var keyboard: some View {
//            SystemKeyboard(
//                state: controller.state,
//                services: controller.services,
//                themeObject: [],
//                neonPermission: theme.neonPermission ?? .init(),
//                neonLinearAnimation: theme.neonLinearAnimation ?? .none,
//                animationValueObjects: theme.buttonNeonAnimation,
//                buttonContent: { $0.view },
//                buttonView: { $0.view },
//                emojiKeyboard: { $0.view },
//                toolbar: { $0.view }
//            )
//        }
//        
//        var body: some View {
//            VStack(spacing: 10) {
//                Group {
//                    SystemKeyboard(
//                        state: controller.state,
//                        services: controller.services,
//                        themeObject: [],
//                        neonPermission: theme.neonPermission ?? .init(),
//                        neonLinearAnimation: theme.neonLinearAnimation ?? .none,
//                        animationValueObjects: theme.buttonNeonAnimation,
//                        buttonContent: { param in
//                            switch param.item.action {
//                            case .backspace:
//                                Image(systemName: "trash").foregroundColor(Color.red)
//                            default: param.view
//                            }
//                        },
//                        buttonView: { param in
//                            switch param.item.action {
//                            case .space:
//                                Text("This is a space bar replacement")
//                                    .frame(maxWidth: .infinity)
//                                    .multilineTextAlignment(.center)
//                            default: param.view
//                            }
//                        },
//                        emojiKeyboard: { _ in
//                            emojiKeyboard
//                        },
//                        toolbar: { $0.view }
//                    )
//                }
//                .background(theme.background?.backgroundView)
//            }
//        }
//    }
//    
//    static var previews: some View {
//        Preview()
//    }
//}
