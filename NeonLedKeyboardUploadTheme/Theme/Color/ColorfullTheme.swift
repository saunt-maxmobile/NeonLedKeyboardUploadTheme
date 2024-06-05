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
        background: .image(UIImage(named: "colorfullColorPaint")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        neonLinearAnimation: .radial([
            Color(hex: "#000AFF"),
            Color(hex: "#FFFFFF"),
        ]),
        preview: .image(UIImage(named: "colorfullColorPaintPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullColorPaint"
    )
    
    static var colorfullTwirl: Theme = .init(id: "7A993663-689D-4A3F-8327-B9AC14B3E8DB",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 12,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "colorfullTwirl")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullTwirlPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullTwirl"
    )
    
    static var colorfullUniverse: Theme = .init(
        id: "F0CFEDC8-E9EB-4095-A2F9-14F6E0AE7D40",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#000AFF"),
            font: .body,
            cornerRadius: 25,
            border: .init(color: .white, size: 2),
            shapeType: .HEXAGON
        ),
        edgeInsets: .init(top: 3, left: 0, bottom: 3, right: 0),
        background: .image(UIImage(named: "colorfullUniverse")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonCharacter: true),
        buttonNeonAnimation: [
            .init(colors: ["#FFFFFF", "#FF00D6", "#000AFF"], .right, .conic),
            .init(colors: ["#FFFFFF", "#FF00D6", "#000AFF"], .down, .conic),
            .init(colors: ["#FFFFFF", "#FF00D6", "#000AFF"], .left, .conic),
            .init(colors: ["#FFFFFF", "#FF00D6", "#000AFF"], .up, .conic),
        ],
        durationAnimation: 1,
        preview: .image(UIImage(named: "colorfullUniversePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
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
        background: .image(UIImage(named: "colorfullLiquid")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 3,
        neonLinearAnimation: .LTR([
            Color(hex: "729D39"),
            Color(hex: "#FF7A00"),
            Color(hex: "729D39"),
            Color(hex: "FF00D6"),
            Color(hex: "729D39"),
        ], 2),
        preview: .image(UIImage(named: "colorfullLiquidPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullLiquid"
    )
    
    static var colorfullCloud: Theme = .init(id: "FEE1831C-1C84-4C76-8BEF-19884AAF9CF1",
        button: .init(
            background: .color(.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 12,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullCloud")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        durationAnimation: 3,
        neonLinearAnimation: .LTR([
            Color(hex: "#00C2FF"),
            Color(hex: "##000AFF"),
            Color(hex: "#00C2FF"),
        ], 2),
        preview: .image(UIImage(named: "colorfullCloudPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
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
        background: .image(UIImage(named: "colorfullFlower")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        neonLinearAnimation: .radial([
            Color(hex: "FEF635"),
            Color(hex: "FA00FF"),
        ]),
        preview: .image(UIImage(named: "colorfullFlowerPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullFlower"
    )
    
    static var colorfullLowPoly: Theme = .init(id: "F899D3DB-D3E1-4FC6-82F8-348D667A60F2",
        button: .init(
            background: .color(.white.opacity(0.5)),
            foregroundColor: Color(hex: "#000AFF"),
            font: .body,
            cornerRadius: 12,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullLowPoly")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .LTR([
            Color(hex: "#FF00F5"),
            Color(hex: "#000AFF"),
            
        ], 2),
        preview: .image(UIImage(named: "colorfullLowPolyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
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
        background: .image(UIImage(named: "colorfullTropical")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullTropicalPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullTropical"
    )
    
    static var colorfullWavesStrip: Theme = .init(
        id: "39D4702F-50F0-4DB1-97E4-428D24DFA38E",
        button: .init(
            background: .color(Color(hex: "#FF94AE").opacity(0.8)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 25,
            border: .init(color: Color(hex: "#FF94AE"), size: 2),
            shapeType: .HEXAGON
        ),
        edgeInsets: .init(top: 3, left: 0, bottom: 3, right: 0),
        background: .image(UIImage(named: "colorfullWavesStrip")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorfullWavesStripPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullWavesStrip"
    )
    
    static var colorfullColorCurve: Theme = .init(id: "ACBD65E6-198F-4EDF-90CF-9BEFC35ADD39",
        button: .init(
            background: .color(.white.opacity(0.8)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 12,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullColorCurve")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonButton: true),
//        disableNeonAnimationButton: true,
        neonLinearAnimation: .radial([
            Color(hex: "000AFF"),
            Color(hex: "FA00FF"),
            Color(hex: "#FF9500"),
        ]),
        preview: .image(UIImage(named: "colorfullColorCurvePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullColorCurve"
    )
    
    static var colorfullCubes: Theme = .init(id: "08CCB351-5BC6-4809-822F-9F22872CDA10",
        button: .init(
            background: .color(Color(hex: "#B6F364").opacity(0.6)),
            foregroundColor: .white,
            font: .body,
            cornerRadius: 12,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "colorfullCubes")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
//        disableNeonAnimationCharacter: true,
        neonLinearAnimation: .radial([
            Color(hex: "FFFFFF"),
            Color(hex: "B6F364"),
        ]),
        preview: .image(UIImage(named: "colorfullCubesPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullCubes"
    )
}

extension Theme {
    static var colorfullMyosotis: Theme = .init(
        id: "01HY2NE8HWN2TKB31KJ34EAT0Y",
        button: .init(
            background: .image(UIImage(named: "colorfullMyosotis.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#0047D0"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#0085FF")),
        backspaceButton: .color(.init(hex: "#BBE7FF")),
        keyboardTypeButton: .color(.init(hex: "#0085FF")),
        spaceButton: .color(.init(hex: "#7BC0FF")),
        primaryButton: .color(.init(hex: "#BBE7FF")),
        emojiButton: .color(.init(hex: "#0085FF")),
        specialKey: "colorfullMyosotis",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.white),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullMyosotisPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullMyosotis"
    )
    
    static var colorfullLavender: Theme = .init(
        id: "01HY2Q8V2QJVAXEHSTCY7R040N",
        button: .init(
            background: .image(UIImage(named: "colorfullLavender.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#0047D0"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#8A3EFF")),
        backspaceButton: .color(.init(hex: "#E4D3FF")),
        keyboardTypeButton: .color(.init(hex: "#8A3EFF")),
        spaceButton: .color(.init(hex: "#C49EFF")),
        primaryButton: .color(.init(hex: "#E4D3FF")),
        emojiButton: .color(.init(hex: "#8A3EFF")),
        specialKey: "colorfullLavender",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.white),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullLavenderPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullLavender"
    )
    
    static var colorfullHibicus: Theme = .init(
        id: "01HY2QTHDBZGCNGMHJWCV3HXHE",
        button: .init(
            background: .image(UIImage(named: "colorfullHibicus.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .white,
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#2CCDFF")),
        backspaceButton: .color(.init(hex: "#FF95A6")),
        keyboardTypeButton: .color(.init(hex: "#2CCDFF")),
        spaceButton: .color(.init(hex: "#FFC450")),
        primaryButton: .color(.init(hex: "#FF95A6")),
        emojiButton: .color(.init(hex: "#2CCDFF")),
        specialKey: "colorfullHibicus",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.white),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullHibicusPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullHibicus"
    )
    
    static var colorfullMangosteen: Theme = .init(
        id: "01HY2R8BQK1WT6KF2ZSSF4NG8G",
        button: .init(
            background: .image(UIImage(named: "colorfullMangosteen.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .white,
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#FF00F5")),
        backspaceButton: .color(.init(hex: "#8A3EFF")),
        keyboardTypeButton: .color(.init(hex: "#FF00F5")),
        spaceButton: .color(.init(hex: "#00A3FF")),
        primaryButton: .color(.init(hex: "#8A3EFF")),
        emojiButton: .color(.init(hex: "#FF00F5")),
        specialKey: "colorfullMangosteen",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#000577")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullMangosteenPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullMangosteen"
    )
    
    static var colorfullSky: Theme = .init(
        id: "01HY2RSA3QE14CD4KF0JRTQ44F",
        button: .init(
            background: .image(UIImage(named: "colorfullSky.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#000AFF"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#3B7EFF")),
        backspaceButton: .color(.init(hex: "#3B7EFF")),
        keyboardTypeButton: .color(.init(hex: "#66BFFF")),
        spaceButton: .color(.init(hex: "#FBFBFB")),
        primaryButton: .color(.init(hex: "#66BFFF")),
        emojiButton: .color(.init(hex: "#66BFFF")),
        specialKey: "colorfullSky",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#000577")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullSkyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullSky"
    )
    
    static var colorfullDarkNight: Theme = .init(
        id: "01HY2SCT68PJNMJRH03849493S",
        button: .init(
            background: .image(UIImage(named: "colorfullDarkNight.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#FFFFFF"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#00102F")),
        backspaceButton: .color(.init(hex: "#00102F")),
        keyboardTypeButton: .color(.init(hex: "#105DF4")),
        spaceButton: .color(.init(hex: "#00102F")),
        primaryButton: .color(.init(hex: "#105DF4")),
        emojiButton: .color(.init(hex: "#105DF4")),
        specialKey: "colorfullDarkNight",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#1C2D4E")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullDarkNightPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullDarkNight"
    )
    
    static var colorfullMatcha: Theme = .init(
        id: "01HY2TFF4RYCF1QN69W1EC3GQY",
        button: .init(
            background: .image(UIImage(named: "colorfullMatcha.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#355E00"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#90B46A")),
        backspaceButton: .color(.init(hex: "#90B46A")),
        keyboardTypeButton: .color(.init(hex: "#90B46A")),
        spaceButton: .color(.init(hex: "##DBE2D3")),
        primaryButton: .color(.init(hex: "#90B46A")),
        emojiButton: .color(.init(hex: "#90B46A")),
        specialKey: "colorfullMatcha",
        edgeInsets: .init(top: 3, left: 1, bottom: 3, right: 1),
        background: .color(.init(hex: "#FFFFFF")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullMatchaPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullMatcha"
    )
    
    static var colorfullTulips: Theme = .init(
        id: "01HY2XXXE129S7MEHJAD31NM0D",
        button: .init(
            background: .image(UIImage(named: "colorfullTulips.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#002ABF"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#74DBAF")),
        backspaceButton: .color(.init(hex: "#74DBAF")),
        keyboardTypeButton: .color(.init(hex: "#74DBAF")),
        spaceButton: .color(.init(hex: "#74DBAF")),
        primaryButton: .color(.init(hex: "#74DBAF")),
        emojiButton: .color(.init(hex: "#74DBAF")),
        specialKey: "colorfullTulips",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#FFFFFF")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullTulipsPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullTulips"
    )
    
    static var colorfullCentaurea: Theme = .init(
        id: "01HY2XY4JD0FWQ3TQJ73M56Y96",
        button: .init(
            background: .image(UIImage(named: "colorfullCentaurea.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#FFFFFF"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#000AFF")),
        backspaceButton: .color(.init(hex: "#000AFF")),
        keyboardTypeButton: .color(.init(hex: "#000AFF")),
        spaceButton: .color(.init(hex: "#000AFF")),
        primaryButton: .color(.init(hex: "#000AFF")),
        emojiButton: .color(.init(hex: "#000AFF")),
        specialKey: "colorfullCentaurea",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#2B136D")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullCentaureaPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullCentaurea"
    )
    
    static var colorfullIris: Theme = .init(
        id: "01HY2XY9A7VQP6FB5WJR71EVG5",
        button: .init(
            background: .color(.init(hex: "#EFF0FF")),
            foregroundColor: .init(hex: "#000AFF"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#3B7EFF")),
        backspaceButton: .color(.init(hex: "#3B7EFF")),
        keyboardTypeButton: .color(.init(hex: "#66BFFF")),
        spaceButton: .color(.init(hex: "#EFF0FF")),
        primaryButton: .color(.init(hex: "#66BFFF")),
        emojiButton: .color(.init(hex: "#66BFFF")),
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#000AFF")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullIrisPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullIris"
    )
    
    static var colorfullRainbow: Theme = .init(
        id: "01HYFJD9488EBWVAYJ5E7KZD2V",
        button: .init(
            background: .image(UIImage(named: "colorfullRainbow.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .init(hex: "#434689"),
            font: .custom("Roboto-Medium", size: 18),
            cornerRadius: 8
        ),
        shiftButton: .color(.init(hex: "#5ADACB")),
        backspaceButton: .color(.init(hex: "#5ADACB")),
        keyboardTypeButton: .color(.init(hex: "#51B6FF")),
        spaceButton: .color(.init(hex: "#51B6FF")),
        primaryButton: .color(.init(hex: "#51B6FF")),
        emojiButton: .color(.init(hex: "#51B6FF")),
        specialKey: "colorfullRainbow",
        // edgeInsets: .init(top: 1, left: 1, bottom: 1, right: 1),
        background: .color(.init(hex: "#FFFFFF")),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "colorfullRainbowPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorfullRainbow"
    )
}

struct Colorfull_Previews: PreviewProvider {

    struct Preview: View {

        var theme: Theme = .colorfullIris

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]

            let theme: Theme = .colorfullIris

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
