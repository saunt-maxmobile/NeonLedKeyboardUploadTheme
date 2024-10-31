//
//  HalloweenTheme.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 14/10/24.
//

import Foundation
import SwiftUI

extension Theme {
    static var halloweenBlackHalloween: Theme = .init(
        id: "01JA4B7YFKFBAADKJ2QRNEH0RP",
        button: .init(
            background: .color(
                .clear
            ),
            foregroundColor: Color.white,
            font: .custom(
                "LilitaOne",
                size: 18
            )
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.BlackHalloween.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonLinearAnimation: .LTR([
            Color(hex: "FFFC68"),
            Color(hex: "#FF7700"),
            Color(hex: "#B700FF"),
            Color(hex: "#FFFC68"),
            Color(hex: "FFFC68"),
        ], 3),
        preview: .image(
            UIImage(
                named: "halloweenBlackHalloweenPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenBlackHalloween",
        iconColor: Color(
            hex: "#FA00FF"
        ),
        requiredPremium: false
    )
    
    static var halloweenSpookyKeys: Theme = .init(
        id: "01JA4BPWNMSW9FAZBJYY7WT7K7",
        button: .init(
            background: .color(
                .white.opacity(0.2)
            ),
            foregroundColor: Color.white,
            font: .custom(
                "Roboto-Medium",
                size: 18
            ),
            cornerRadius: 46,
            border: .init(color: .white, size: 1)
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.SpookyKeys.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .dark,
        inputCallout: .dark,
        preview: .image(
            UIImage(
                named: "halloweenSpookyKeysPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenSpookyKeys",
        iconColor: .white,
        requiredPremium: false
    )
    
    static var halloweenCastleKey: Theme = .init(
        id: "01JA4ZNKXX2X8VG1P9C4G64HN0",
        button: .init(
            background: .color(
                .white.opacity(0.45)
            ),
            foregroundColor: Color(hex: "643000"),
            font: .custom(
                "Roboto-Medium",
                size: 18
            ),
            cornerRadius: 46,
            border: .init(color: .white, size: 1)
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.CastleKey.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(
            UIImage(
                named: "halloweenCastleKeyPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenCastleKey",
        iconColor: Color(hex: "FF7A00"),
        requiredPremium: false
    )
    
    static var halloweenTowerKey: Theme = .init(
        id: "01JA4CBSVYQG227DG5Y9GGQTPD",
        button: .init(
            background: .color(
                .clear
            ),
            foregroundColor: Color.white,
            font: .custom(
                "LilitaOne",
                size: 18
            )
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.TowerKey.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonLinearAnimation: .LTR([
            .init(hex: "00FFFF"),
            .init(hex: "FF883E"),
            .init(hex: "E6FF00"),
            .init(hex: "00DFFF"),
            .init(hex: "00FFFF"),
        ], 3),
        preview: .image(
            UIImage(
                named: "halloweenTowerKeyPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenTowerKey",
        iconColor: Color(hex: "05DAD2"),
        requiredPremium: false
    )
    
    static var halloweenMysticKey: Theme = .init(
        id: "01JA4DGK5CMRX63PVB45DDSQGS",
        button: .init(
            background: .color(
                .white.opacity(0.3)
            ),
            foregroundColor: Color(hex: "FF9000"),
            font: .custom(
                "Roboto-Medium",
                size: 18
            ),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.MysticKey.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .dark,
        inputCallout: .dark,
        preview: .image(
            UIImage(
                named: "halloweenMysticKeyPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenMysticKey",
        iconColor: Color(hex: "FF8413")
    )
    
    static var halloweenCuteGhost: Theme = .init(
        id: "01JA4E82MDHH8ME2NT3YW5N7FS",
        button: .init(
            background: .color(
                .init(hex: "1A1207").opacity(0.4)
            ),
            foregroundColor: Color(hex: "FF9000"),
            font: .custom(
                "MochiyPopOne-Regular",
                size: 18
            ),
            cornerRadius: 10
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.CuteGhost.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            .init(hex: "FFF174"),
            .init(hex: "EA4EFF"),
        ]),
        preview: .image(
            UIImage(
                named: "halloweenCuteGhostPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenCuteGhost",
        iconColor: Color(hex: "29002F")
    )
    
    static var halloweenGhostlyClick: Theme = .init(
        id: "01JA4F4DD187XSV4CMKZMFXC9T",
        button: .init(
            background: .color(
                .white.opacity(0.1)
            ),
            foregroundColor: Color(hex: "FF00FF"),
            font: .custom(
                "Roboto-Black",
                size: 18
            ),
            cornerRadius: 10
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.GhostlyClick.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .dark,
        inputCallout: .dark,
        preview: .image(
            UIImage(
                named: "halloweenGhostlyClickPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenGhostlyClick",
        iconColor: Color(hex: "FF00FF")
    )
    
    static var halloweenGothicCastle: Theme = .init(
        id: "01JA4FNV456ZGQ19WVKK0PVN8N",
        button: .init(
            background: .color(
                .white.opacity(0.6)
            ),
            foregroundColor: Color(hex: "F2FF00"),
            font: .custom(
                "Roboto-Medium",
                size: 18
            ),
            cornerRadius: 46,
            border: .init(color: .white, size: 1)
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.GothicCastle.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonBorder: true, disableNeonButton: true),
        neonLinearAnimation: .radial([
            .init(hex: "F2FF00"),
            .init(hex: "FF7700"),
            .init(hex: "F50000"),
        ]),
        preview: .image(
            UIImage(
                named: "halloweenGothicCastlePreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenGothicCastle",
        iconColor: Color(hex: "C01100")
    )
    
    static var halloweenMoonLight: Theme = .init(
        id: "01JA4G9YAW7FZV9B6EG3HJEP0J",
        button: .init(
            background: .color(
                .clear
            ),
            foregroundColor: Color(hex: "F2FF00"),
            font: .custom(
                "LilitaOne",
                size: 18
            )
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.Moonlight.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonLinearAnimation: .LTR([
            .init(hex: "00FFFF"),
            .init(hex: "FF883E"),
            .init(hex: "FFF33A"),
            .init(hex: "00DFFF"),
            .init(hex: "00FFFF"),
        ], 3),
        preview: .image(
            UIImage(
                named: "halloweenMoonlightPreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenMoonlight",
        iconColor: Color(hex: "0CF3DB")
    )
    
    static var halloweenEerieOrange: Theme = .init(
        id: "01JA4GS3CJW2H8R27JY2N03G73",
        button: .init(
            background: .color(
                .init(hex: "FEFBEA").opacity(0.85)
            ),
            foregroundColor: Color(hex: "F2FF00"),
            font: .custom(
                "Righteous-Regular",
                size: 18
            ),
            cornerRadius: 10
        ),
        background: .image(
            UIImage(
                named: "Keyboard.Key.EerieOrange.Background"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data()
        ),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            .init(hex: "FFBB00"),
            .init(hex: "FF9738"),
            .init(hex: "F05F5C"),
        ]),
        preview: .image(
            UIImage(
                named: "halloweenEerieOrangePreview"
            )?.jpegData(
                compressionQuality: 1
            ) ?? Data(),
            contentMode: .fit
        ),
        name: "halloweenEerieOrange",
        iconColor: Color(hex: "FF4D49")
    )
    
}

struct HalloweenTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .halloweenEerieOrange

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .halloweenEerieOrange
            
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
                        iconColor: theme.iconColor,
                        buttonContent: { $0.view },
                        buttonView: { $0.view },
                        emojiKeyboard: { $0.view },
                        toolbar: { $0.view }
                    )
                }
                .background(theme.background?.backgroundView)
                
                theme.preview?.backgroundView
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
