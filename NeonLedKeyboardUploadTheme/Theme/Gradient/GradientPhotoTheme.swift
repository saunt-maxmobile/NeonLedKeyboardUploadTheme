//
//  GradientPhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var gradientPhotoRainbow: Theme = .init(id: "A6DE5639-3D29-4192-B1B6-1502E6975616",
        button: .init(
            background: .color(.white),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "gradientPhotoRainbow")?.jpegData(compressionQuality: 0.3) ?? Data()),
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        neonLinearAnimation: .LTR(nil, 3),
        preview: .image(UIImage(named: "gradientPhotoRainbowPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPhotoRainbow"
    )
    
    static var gradientPhotoRomantic: Theme = .init(id: "DF83DD37-7238-4691-B04E-02E19087DC4B",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: Color(hex: "#FF37EB"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: Color(hex: "#FF78E9"), size: 2)
        ),
        background: .image(UIImage(named: "gradientPhotoRomantic")?.jpegData(compressionQuality: 0.3) ?? Data()),
        
        preview: .image(UIImage(named: "gradientPhotoRomanticPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPhotoRomantic"
    )
    
    static var gradientPhotoUnicorn: Theme = .init(id: "B5678ADD-3D7D-4EF6-BB45-A7076C4E7E08",
        button: .init(
            background: .color(Color(hex: "#7D00C5").opacity(0.6)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "gradientPhotoUnicorn")?.jpegData(compressionQuality: 0.2) ?? Data()),
        
        preview: .image(UIImage(named: "gradientPhotoUnicornPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPhotoUnicorn"
    )
    
    static var gradientPhotoGillter: Theme = .init(id: "91869E51-A506-4B64-B52D-64CD55D40D35",
        button: .init(
            background: .color(Color(hex: "#7D00C5").opacity(0.6)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "gradientPhotoGillter")?.jpegData(compressionQuality: 0.2) ?? Data()),
        
        neonPermission: .init(disableNeonCharacter: true),
        durationAnimation: 10,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 0.94, blue: 1),
             Color(red: 0.98, green: 0, blue: 1),
             Color(red: 0, green: 0.94, blue: 1)
            ], 3),
        preview: .image(UIImage(named: "gradientPhotoGillterPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPhotoGillter"
    )
    
    static var gradientPhotoColorfull: Theme = .init(id: "84D40263-085D-4F1C-AAB8-C5593B350A82",
        button: .init(
            background: .color(Color(hex: "#7D00C5").opacity(0.6)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "gradientPhotoColorfull")?.jpegData(compressionQuality: 0.2) ?? Data()),
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        durationAnimation: 5,
        neonLinearAnimation: .LTR(
            [Color(red: 1, green: 0.42, blue: 0),
             Color(red: 1, green: 0, blue: 0.96),
             Color(red: 0, green: 0.04, blue: 1),
             Color(red: 0, green: 1, blue: 1),
             Color(red: 0.08, green: 1, blue: 0),
             Color(red: 1, green: 0.42, blue: 0),
            ], 4),
        preview: .image(UIImage(named: "gradientPhotoColorfullPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPhotoColorfull"
    )
}

extension Theme {
    static var gradientRiver: Theme = .init(id: "2E103B09-6B34-4EE1-B1B4-EAB8291D9064",
        button: .init(
            background: .color(.white.opacity(0.3 )),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white.opacity(0.8), size: 1)
        ),
        background: .image(UIImage(named: "gradientRiver")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 5,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 1, blue: 1),
             .white,
             .white,
             Color(red: 1, green: 0, blue: 0.72),
             Color(red: 1, green: 0, blue: 0.72),
             Color(red: 0, green: 1, blue: 1),
            ], 5),
        preview: .image(UIImage(named: "gradientRiverPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientRiver"
    )
    
    static var gradientPopPoly: Theme = .init(id: "3F71723D-972D-495E-969C-E72F4BED5311",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 10,
            border: .init(color: Color(hex: "#000AFF"), size: 1)
        ),
        background: .image(UIImage(named: "gradientPopPoly")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "gradientPopPolyPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPopPoly"
    )
    
    static var gradientHologram: Theme = .init(id: "D3DF0848-065B-4BB4-BC0A-806D086A2233",
        button: .init(
            background: .color(.white.opacity(0.5)),
            foregroundColor: Color(hex: "#FA00FF"),
            font: .body,
            cornerRadius: 10,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "gradientHologram")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "gradientHologramPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientHologram"
    )
    
    static var gradientVividBlurred: Theme = .init(id: "00E9C202-B1E1-4AB0-915C-3A048D05070A",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "gradientVividBlurred")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        durationAnimation: 5,
        neonLinearAnimation: .radial(
            [Color(hex: "FF984C"),
             Color(hex: "FF984C"),
             Color(hex: "00FFFF"),
             Color(hex: "00FFFF"),
             .clear
            ]),
        preview: .image(UIImage(named: "gradientVividBlurredPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientVividBlurred"
    )
    
    static var gradientVividColorfull: Theme = .init(id: "3F1E732D-9F4E-421B-9D59-F5B2DA73EBEA",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 10,
            border: .init(color: .white, size: 5),
            shapeType: .HEXAGON
        ),
        background: .image(UIImage(named: "gradientVividColorfull")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        buttonNeonAnimation: [
            .init(colors: ["#000AFF", "#FF00D6"], .right, .conic),
            .init(colors: ["#FF00D6", "#000AFF", ], .down, .conic),
            .init(colors: ["#000AFF", "#FF00D6", ], .left, .conic),
            .init(colors: ["#FF00D6", "#000AFF", ], .up, .conic),
        ],
        durationAnimation: 1,
        preview: .image(UIImage(named: "gradientVividColorfullPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientVividColorfull"
    )
    
    static var gradientDarkUniverse: Theme = .init(id: "6D09BBDD-A70B-421E-84BF-2731A8458B6A",
        button: .init(
            background: .color(.white),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 10,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "gradientDarkUniverse")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
        durationAnimation: 5,
        neonLinearAnimation: .radial(
            [Color(red: 0, green: 1, blue: 1),
             Color(red: 0, green: 1, blue: 1),
             Color(red: 0, green: 0.04, blue: 1),
             Color(red: 0, green: 0.04, blue: 1),
             .clear
            ]),
        preview: .image(UIImage(named: "gradientDarkUniversePreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientDarkUniverse"
    )
    
    static var gradientVortex: Theme = .init(
        id: "27C7946E-7E01-4897-9AA6-81FA50421051",
        button: .init(
            background: .color(.white),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "gradientVortex")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        durationAnimation: 1,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 1, blue: 1),
             Color(red: 1, green: 0, blue: 0.96),
             Color(red: 0, green: 1, blue: 1),
             Color(red: 1, green: 0.48, blue: 0),
             Color(red: 0, green: 1, blue: 1),
            ], 5),
        preview: .image(UIImage(named: "gradientVortexPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientVortex"
    )
    
    static var gradientPolygon: Theme = .init(
        id: "9DE2E643-C2F4-4EA2-959A-8ADF0A0A7C7E",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white, size: 2)
        ),
        background: .image(UIImage(named: "gradientPolygon")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        neonLinearAnimation: .radial(
            [Color(red: 0.5, green: 1, blue: 0.01),
             Color(red: 0.5, green: 1, blue: 0.01),
             .white,
             .white,
             .clear
            ]),
        preview: .image(UIImage(named: "gradientPolygonPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPolygon"
    )
    
    static var gradientAurora: Theme = .init(
        id: "CB9CA199-A238-4E9E-8F66-1724935B3769",
        button: .init(
            background: .color(.clear),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "gradientAurora")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        durationAnimation: 3,
        neonLinearAnimation: .radial(
            [.white,
             .white,
             Color(hex: "80FE02"),
             Color(hex: "80FE02"),
             .clear
            ]),
        preview: .image(UIImage(named: "gradientAuroraPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientAurora"
    )
    
    static var gradientYellowFruits: Theme = .init(
        id: "98D016CD-4008-47B6-890B-D0FAE379D910",
        button: .init(
            background: .color(Color(hex: "24B600").opacity(0.6)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white.opacity(0.6), size: 2),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "gradientYellowFruits")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonBorder: true, disableNeonButton: true),
        durationAnimation: 5,
        neonLinearAnimation: .LTR(
            [Color(red: 1, green: 0.48, blue: 0),
             .white,
             Color(red: 1, green: 0.48, blue: 0),
            ], 5),
        preview: .image(UIImage(named: "gradientYellowFruitsPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientYellowFruits"
    )
    
    static var gradientPurpleVivid: Theme = .init(
        id: "A1BF1457-0B14-4D92-BCAD-27541CE214DE",
        button: .init(
            background: .color(Color(hex: "#0500FF").opacity(0.5)),
            foregroundColor: Color(hex: "#FEF635"),
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "gradientPurpleVivid")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "gradientPurpleVividPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientPurpleVivid"
    )
    
    static var gradientHexagonBlurred: Theme = .init(
        id: "253862AF-70AB-4898-8181-69E21D3FE9FD",
        button: .init(
            background: .color(Color.white.opacity(0.7)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 12,
            border: .init(color: .white, size: 5),
            shapeType: .HEXAGON
        ),
        background: .image(UIImage(named: "gradientHexagonBlurred")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonBorder: true, disableNeonButton: true),
        durationAnimation: 5,
        neonLinearAnimation: .LTR(
            [Color(red: 1, green: 0.48, blue: 0),
             Color(red: 1, green: 0, blue: 0.72),
             Color(red: 1, green: 0.48, blue: 0),
            ], 2),
        preview: .image(UIImage(named: "gradientHexagonBlurredPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientHexagonBlurred"
    )
    
    static var gradientCircleBlurred: Theme = .init(id: "68F46045-8663-488B-AC5C-6513F841DDCD",
        button: .init(
            background: .color(.white),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "gradientCircleBlurred")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
        durationAnimation: 1,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 1, blue: 1),
             Color(red: 0, green: 0.04, blue: 1),
             Color(red: 0, green: 1, blue: 1),
             Color(red: 0.25, green: 0.73, blue: 0.13),
             Color(red: 0, green: 1, blue: 1),
            ], 5),
        preview: .image(UIImage(named: "gradientCircleBlurredPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientCircleBlurred"
    )
    
    static var gradientCinema: Theme = .init(id: "597DA35E-DBE2-4C59-A1EB-36DBD7D469F2",
        button: .init(
            background: .color(Color(hex: "#34FE02")),
            foregroundColor: Color(hex: "#2D5A00"),
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "gradientCinema")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonCharacter: true),
        durationAnimation: 4,
        neonLinearAnimation: .radial(
            [Color(red: 0.21, green: 1, blue: 0.01),
             Color(red: 0.21, green: 1, blue: 0.01),
             Color(red: 1, green: 0.78, blue: 0),
             Color(red: 1, green: 0.78, blue: 0),
             .clear
            ]),
        preview: .image(UIImage(named: "gradientCinemaPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "gradientCinema"
    )
}

struct GradientPhotoTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .gradientCinema

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .gradientCinema
            
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
