//
//  ColorfullTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 19/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var colorfullColorPaint: Theme = .init(id: "67508716-AE79-4D52-AFF9-E7EB140BC2A7",
        button: .init(
            background: .color(Color.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "colorfullColorPaint")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        durationAnimation: 5,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "colorfullColorPaintPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullColorPaint"
    )
    
    static var colorfullTwirl: Theme = .init(id: "7A993663-689D-4A3F-8327-B9AC14B3E8DB",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white, size: 2)
        ),
        background: .image(UIImage(named: "colorfullTwirl")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullTwirlPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullTwirl"
    )
    
    static var colorfullUniverse: Theme = .init(id: "F0CFEDC8-E9EB-4095-A2F9-14F6E0AE7D40",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white, size: 2),
            shapeType: .HEXAGON
        ),
        background: .image(UIImage(named: "colorfullUniverse")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        buttonNeonAnimation: NeonStyle.colorRotate4Conic.getStyle(),
        durationAnimation: 1,
        preview: .image(UIImage(named: "colorfullUniversePreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullUniverse"
    )
    
    static var colorfullLiquid: Theme = .init(id: "F2F6F4F1-BC4E-4240-A45A-542B02013366",
        button: .init(
            background: .color(.white),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "colorfullLiquid")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 3,
        neonLinearAnimation: .LTR(nil, 5),
        preview: .image(UIImage(named: "colorfullLiquidPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullLiquid"
    )
    
    static var colorfullCloud: Theme = .init(id: "FEE1831C-1C84-4C76-8BEF-19884AAF9CF1",
        button: .init(
            background: .color(.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullCloud")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 3,
        neonLinearAnimation: .LTR(nil, 5),
        preview: .image(UIImage(named: "colorfullCloudPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullCloud"
    )
    
    static var colorfullFlower: Theme = .init(id: "DDCC211D-A1FF-46B0-97CE-4124B1DF26A4",
        button: .init(
            background: .color(.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullFlower")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        durationAnimation: 3,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "colorfullFlowerPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullFlower"
    )
    
    static var colorfullLowPoly: Theme = .init(id: "F899D3DB-D3E1-4FC6-82F8-348D667A60F2",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: Color(hex: "#000AFF"),
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullLowPoly")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullLowPolyPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullLowPoly"
    )
    
    static var colorfullTropical: Theme = .init(id: "F7C7E5E9-CD1E-434D-A7E4-6289F333CFBE",
        button: .init(
            background: .color(Color(hex: "#3300FF").opacity(0.8)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        background: .image(UIImage(named: "colorfullTropical")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullTropicalPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullTropical"
    )
    
    static var colorfullWavesStrip: Theme = .init(id: "39D4702F-50F0-4DB1-97E4-428D24DFA38E",
        button: .init(
            background: .color(Color(hex: "#FF94AE").opacity(0.8)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: Color(hex: "#FF94AE"), size: 2),
            shapeType: .HEXAGON
        ),
        background: .image(UIImage(named: "colorfullWavesStrip")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullWavesStripPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullWavesStrip"
    )
    
    static var colorfullColorCurve: Theme = .init(id: "ACBD65E6-198F-4EDF-90CF-9BEFC35ADD39",
        button: .init(
            background: .color(.white.opacity(0.8)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullColorCurve")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "colorfullColorCurvePreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullColorCurve"
    )
    
    static var colorfullCubes: Theme = .init(id: "08CCB351-5BC6-4809-822F-9F22872CDA10",
        button: .init(
            background: .color(Color(hex: "#B6F364").opacity(0.6)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullCubes")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        neonLinearAnimation: .radial(nil),
        preview: .image(UIImage(named: "colorfullCubesPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "colorfullCubes"
    )
}

struct ColorfullTheme_Previews: PreviewProvider {

    struct Preview: View {

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .init(id: UUID().uuidString,
                button: .init(
                    background: .color(.blue),
                    foregroundColor: .white,
                    font: .custom("Poppins", size: 18),
                    cornerRadius: 10,
                    border: .init(color: .white, size: 5)
                ),
                background: .color(.red),
                actionCallout: .neon,
                inputCallout: .neon,
                
                durationAnimation: 6,
                neonLinearAnimation: .radial(nil),
                preview: .image(UIImage(named: "portraitNeonDogPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
                name: "Poppins"
            )
            
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
                neonPermission: .init(
                    disableNeonCharacter: true,
                    disableNeonBorder: true,
                    disableNeonButton: true
                ),
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
                        neonPermission: .init(
                            disableNeonCharacter: true,
                            disableNeonBorder: true
//                            disableNeonButton: true
                        ),
                        neonLinearAnimation: .LTR(nil,3),
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
                .background(Color.red)
//                .background(controller.state.keyboardTheme.background.backgroundView)
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
