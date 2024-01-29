//
//  PortraitTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 19/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var portraitBossDog: Theme = .init(id: "27F09144-7E6F-4119-A1B3-452D6A66BC5C",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Rye", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitBossDog")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        durationAnimation: 4,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "portraitBossDogPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitBossDog"
    )
    
    static var portraitLionKing: Theme = .init(id: "1B277E27-3EA1-4A05-8C54-2D9D5AA60EE9",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Poppins", size: 18),
            cornerRadius: 0,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "portraitLionKing")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "portraitLionKingPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitLionKing"
    )
    
    static var portraitRobotic: Theme = .init(id: "793F0F2F-01DF-49D4-8900-032CD2DF111A",
        button: .init(
            background: .color(Color(hex: "#4200FF")!),
            foregroundColor: .white,
            font: .custom("SairaStencilOne", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitRobotic")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 6,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "portraitRoboticPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitRobotic"
    )
    
    static var portraitNeonCat: Theme = .init(id: "93898696-C9B9-4990-AFF1-CF7310B1C9B8",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Poppins", size: 18),
            cornerRadius: 0,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitNeonCat")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 6,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "portraitNeonCatPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitNeonCat"
    )
    
    static var portraitNeonDog: Theme = .init(id: "9AED4A01-037E-4A24-BF4B-67DEB69F5EE9",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("Poppins", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 2)
        ),
        background: .image(UIImage(named: "portraitNeonDog")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "portraitNeonDogPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitNeonDog"
    )
    
    static var portraitLlama: Theme = .init(id: "90C90D9E-383B-48D7-BC48-24BAA0EDFE56",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("SairaStencilOne", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 2)
        ),
        background: .image(UIImage(named: "portraitLlama")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .LTR(nil, 5),
        preview: .image(UIImage(named: "portraitLlamaPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitLlama"
    )
    
    static var portraitNeonTiger: Theme = .init(id: "D7F62533-096E-48A9-A774-58AF4E537D90",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .custom("SairaStencilOne", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 2)
        ),
        background: .image(UIImage(named: "portraitNeonTiger")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .LTR(nil, 5),
        preview: .image(UIImage(named: "portraitNeonTigerPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitNeonTiger"
    )
    
    static var portraitMonkeyFashion: Theme = .init(id: "D6078748-72D6-404F-84B7-64AD04CD52E4",
        button: .init(
            background: .color(Color(hex: "#FFDE00")!.opacity(0.5)),
            foregroundColor: .white,
            font: .custom("SairaStencilOne", size: 18),
            cornerRadius: 10,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "portraitMonkeyFashion")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 6,
        neonLinearAnimation: .LTR(nil, 5),
        preview: .image(UIImage(named: "portraitMonkeyFashionPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "portraitMonkeyFashion"
    )
}

struct PortraitTheme_Previews: PreviewProvider {

    struct Preview: View {

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            
            let theme = Theme.portraitMonkeyFashion
            
            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
            
//            controller.state.keyboardTheme = theme
            
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
                .background(
//                    controller.state.keyboardTheme.background.backgroundView
                )
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
