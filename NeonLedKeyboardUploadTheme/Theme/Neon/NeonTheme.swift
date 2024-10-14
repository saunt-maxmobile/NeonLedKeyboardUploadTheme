//
//  NeonTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var neonCyber: Theme = .init(
        id: "CE50B09B-8C0C-4267-BC90-496B0B0D798E",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonCyber")?.jpegData(compressionQuality: 1) ?? Data()),
        buttonNeonAnimation: [
            .init(colors: ["#00FFFF", "#FF00F5", "#00FFFF", "#FF00F5"], .right, .conic),
            .init(colors: ["#00FFFF", "#FF00F5", "#00FFFF", "#FF00F5"], .down, .conic),
            .init(colors: ["#00FFFF", "#FF00F5", "#00FFFF", "#FF00F5"], .left, .conic),
            .init(colors: ["#00FFFF", "#FF00F5", "#00FFFF", "#FF00F5"], .up, .conic),
        ],
        durationAnimation: 2,
        preview: .image(UIImage(named: "neonCyberPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonCyber",
        iconColor: Color(hex: "#F10CF5"),
        requiredPremium: false
    )
    
    static var neonWaves : Theme = .init(
        id: "223B39DC-FBE5-4F8C-B3DE-9232F9AA7B60",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonWaves")?.jpegData(compressionQuality: 1) ?? Data()),
        buttonNeonAnimation: [
            .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "33FF00", "FEF635", "EB6300"], .right, .conic),
            .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "33FF00", "FEF635", "EB6300"], .down, .conic),
            .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "33FF00", "FEF635", "EB6300"], .left, .conic),
            .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "33FF00", "FEF635", "EB6300"], .up, .conic),
        ],
        durationAnimation: 1,
        preview: .image(UIImage(named: "neonWavesPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonWaves",
        iconColor: Color(hex: "#04FFD4"),
        requiredPremium: false
    )
    
    static var neonCyberRoll: Theme = .init(
        id: "BF193597-8F28-4ADA-A571-E236B9B4D411",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonCyberRoll")?.jpegData(compressionQuality: 1) ?? Data()),
        buttonNeonAnimation: [
            .init(colors: ["#FFFFFF", "#35DAFE", "#FF00D6"], .right, .conic),
            .init(colors: ["#FFFFFF", "#35DAFE", "#FF00D6"], .down, .conic),
            .init(colors: ["#FFFFFF", "#35DAFE", "#FF00D6"], .left, .conic),
            .init(colors: ["#FFFFFF", "#35DAFE", "#FF00D6"], .up, .conic),
        ],
        durationAnimation: 1,
        preview: .image(UIImage(named: "neonCyberRollPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonCyberRoll",
        iconColor: Color(hex: "#3ED9FD"),
        requiredPremium: false
    )
    
    static var neonColourPower: Theme = .init(
        id: "8B2562DB-39B5-49D0-BD85-83107A84C5D1",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonColourPower")?.jpegData(compressionQuality: 1) ?? Data()),
        durationAnimation: 3,
        neonLinearAnimation: .LTR([
            Color(hex: "00FFFF"),
            Color(hex: "FFFFFF"),
            Color(hex: "#FFB800"),
            Color(hex: "#FF00D6"),
            Color(hex: "00FFFF"),
        ], 3),
        preview: .image(UIImage(named: "neonColourPowerPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonColourPower",
        iconColor: Color(hex: "#FFC01D"),
        requiredPremium: false
    )
    
    static var neonWater: Theme = .init(
        id: "AD3DDA2D-A6AD-476D-9059-6CB7D8A9EBE0",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonWater")?.jpegData(compressionQuality: 1) ?? Data()),
        durationAnimation: 3,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 0.76, blue: 1),
             .white,
             Color(red: 0, green: 0.76, blue: 1)
            ], 2),
        preview: .image(UIImage(named: "neonWaterPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonWater",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonPoly: Theme = .init(
        id: "B4AF2D53-8C85-41CB-8FFA-AC1D9FA285EA",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonPoly")?.jpegData(compressionQuality: 1) ?? Data()),
        durationAnimation: 3,
        neonLinearAnimation: .radial([
            Color(hex: "FF00B8"),
            Color(hex: "FFFFFF"),
            Color(hex: "0057FF"),
            Color(hex: "00FFFF"),
        ]),
        preview: .image(UIImage(named: "neonPolyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonPoly",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonOcean: Theme = .init(
        id: "5904B0E2-0823-400F-A18D-42B334613FBE",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonOcean")?.jpegData(compressionQuality: 1) ?? Data()),
        durationAnimation: 3,
        neonLinearAnimation: .radial([
            Color(hex: "FF00F5"),
            Color(hex: "00FFFF"),
            Color(hex: "8A3EFF"),
        ]),
        preview: .image(UIImage(named: "neonOceanPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonOcean",
        iconColor: Color(hex: "#FFFFFF")
    )
}

extension Theme {
    static var neonDarkLeaf: Theme = .init(
        id: "1F8E1B91-662A-4E79-92B0-497CA2B19600",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#FF00F5"), size: 1)
        ),
        background: .image(UIImage(named: "neonDarkLeaf")?.jpegData(compressionQuality: 1) ?? Data()),
        neonPermission: .init(disableNeonBorder: true),
        neonLinearAnimation: .radial(
            [Color(red: 0, green: 1, blue: 1),
             Color(red: 0, green: 0.04, blue: 1),
            ]),
        preview: .image(UIImage(named: "neonDarkLeafPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonDarkLeaf",
        iconColor: Color(hex: "#F300EA")
    )
    
    static var neonMysticJungle: Theme = .init(
        id: "BB5F120B-B615-4349-BF75-630D8DB7B868",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00FFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#7636FF"), size: 1)
        ),
        background: .image(UIImage(named: "neonMysticJungle")?.jpegData(compressionQuality: 1) ?? Data()),
        preview: .image(UIImage(named: "neonMysticJunglePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonMysticJungle",
        iconColor: Color(hex: "#00FFFF")
    )
    
    static var neonRoofNeon: Theme = .init(
        id: "7F5BE9DA-E02D-4F77-B4BE-10DF47C05E19",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00FFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#7636FF"), size: 1)
        ),
        background: .image(UIImage(named: "neonRoofNeon")?.jpegData(compressionQuality: 1) ?? Data()),
        neonLinearAnimation: .radial(
            [Color(hex: "FFFFFF"),
             Color(hex: "00FFFF"),
             Color(hex: "FF00D6"),
             Color(hex: "FEF635"),
            ]),
        preview: .image(UIImage(named: "neonRoofNeonPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonRoofNeon",
        iconColor: Color(hex: "#FDF536")
    )
    
    static var neonSummitNeon: Theme = .init(
        id: "74A9F132-EB0A-4518-BBCC-50BC116AA9D0",
        button: .init(
            background: .color(Color(hex: "#000AFF").opacity(0.3)),
            foregroundColor: Color(hex: "#00FFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#00FFFF"), size: 1)
        ),
        background: .image(UIImage(named: "neonSummitNeon")?.jpegData(compressionQuality: 1) ?? Data()),
        preview: .image(UIImage(named: "neonSummitNeonPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonSummitNeon",
        iconColor: Color(hex: "#01E3F0")
    )
    
    static var neonGlass: Theme = .init(
        id: "557F8294-F880-4A78-8A0F-E8A3AF0F23C5",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00F0FF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#000AFF"), size: 1)
        ),
        background: .image(UIImage(named: "neonGlass")?.jpegData(compressionQuality: 1) ?? Data()),
        preview: .image(UIImage(named: "neonGlassPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonGlass",
        iconColor: Color(hex: "#00F0FF")
    )
    
    static var neonLed: Theme = .init(
        id: "BD9F706B-2318-4BCF-B7E9-974050B9990B",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "neonLed")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        durationAnimation: 3,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 1, blue: 1),
             Color(red: 1, green: 0, blue: 0.72),
             Color(red: 1, green: 0.96, blue: 0.21),
             Color(red: 0.5, green: 1, blue: 0.01),
             Color(red: 0, green: 1, blue: 1),
            ], 2),
        preview: .image(UIImage(named: "neonLedPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonLed",
        iconColor: Color(hex: "#85FC05")
    )
    
    static var neonLine: Theme = .init(
        id: "175FE043-5754-4A03-B3CA-A09C0689788F",
        button: .init(
            background: .color(Color(hex: "#000AFF").opacity(0.3)),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#FF00F5"), size: 1)
        ),
        background: .image(UIImage(named: "neonLine")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonBorder: true, disableNeonButton: true),
        neonLinearAnimation: .radial(
            [Color(hex: "#00F0FF"),
             Color(hex: "#FF00F5"),
            ]),
        preview: .image(UIImage(named: "neonLinePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonLine",
        iconColor: Color(hex: "#FF00F5")
    )
    
    static var neonVortexGalaxy: Theme = .init(
        id: "366F0E55-1664-4B1B-8797-22417456AB9A",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "neonVortexGalaxy")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "neonVortexGalaxyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonVortexGalaxy",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonSpread: Theme = .init(
        id: "2FCCC287-82B8-44CD-ADAB-9ACCDEC14605",
        button: .init(
            background: .color(.white),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: Color.clear, size: 0)
        ),
        background: .image(UIImage(named: "neonSpread")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        neonPermission: .init(disableNeonCharacter: true),
        neonLinearAnimation: .radial(
            [Color(hex: "#00FFFF"),
             Color(hex: "#8000FF"),
            ]),
        preview: .image(UIImage(named: "neonSpreadPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonSpread",
        iconColor: Color(hex: "#8000FF")
    )
    
    static var neonFutiristicNight: Theme = .init(
        id: "8206966F-1505-417D-87F6-6D7A5867FE92",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color.clear, size: 0)
        ),
        background: .image(UIImage(named: "neonFutiristicNight")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonLinearAnimation: .radial(
            [.white,
             Color(red: 1, green: 0.96, blue: 0.21),
             Color(red: 1, green: 0, blue: 0.84),
             Color(red: 0, green: 1, blue: 1),
             .white,
            ]),
        preview: .image(UIImage(named: "neonFutiristicNightPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonFutiristicNight",
        iconColor: Color(hex: "#FEF747")
    )
    
    static var neonFantasyNight: Theme = .init(
        id: "0C7EF8C7-0F04-47C2-923D-B2E4CC0739BE",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color.clear, size: 0)
        ),
        background: .image(UIImage(named: "neonFantasyNight")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonLinearAnimation: .radial(
            [.white,
             Color(red: 0, green: 1, blue: 1),
             Color(red: 0, green: 0.04, blue: 1),
             Color(red: 0, green: 0.02, blue: 0.59),
            ]),
        preview: .image(UIImage(named: "neonFantasyNightPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonFantasyNight",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonMargicCircle: Theme = .init(
        id: "E322253A-392F-48C1-BE2D-E6C3BE0C144F",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: Color.white, size: 2),
            shapeType: .HEXAGON
        ),
        edgeInsets: .init(top: 3, left: 1, bottom: 3, right: 1),
        background: .image(UIImage(named: "neonMargicCircle")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        buttonNeonAnimation: [
            .init(colors: ["#00F0FF", "#FFFFFF", "#FA00FF"], .right, .conic),
            .init(colors: ["#00F0FF", "#FFFFFF", "#FA00FF"], .down, .conic),
            .init(colors: ["#00F0FF", "#FFFFFF", "#FA00FF" ], .left, .conic),
            .init(colors: ["#00F0FF", "#FFFFFF", "#FA00FF" ], .up, .conic),
        ],
        durationAnimation: 1,
        preview: .image(UIImage(named: "neonMargicCirclePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonMargicCircle",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonMagicLight: Theme = .init(
        id: "1A18A62A-8B79-42A2-BA95-F6CA68997B9F",
        button: .init(
            background: .color(Color(hex: "#000AFF")),
            foregroundColor: Color(hex: "#00FFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: Color(hex: "#00FFFF"), size: 1),
            shapeType: .CIRCLE
        ),
        edgeInsets: .init(top: 3, left: 1, bottom: 3, right: 1),
        background: .image(UIImage(named: "neonMagicLight")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "neonMagicLightPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonMagicLight",
        iconColor: Color(hex: "#000AFF")
    )
    
    static var neonJungle: Theme = .init(
        id: "3C651B5C-F787-416C-AC59-8BE11E3A0251",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "neonJungle")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        durationAnimation: 5,
        neonLinearAnimation: .LTR(
            [Color(red: 0, green: 0.94, blue: 1),
             Color(red: 1, green: 0.84, blue: 0.27),
             Color(red: 1, green: 0, blue: 0.84),
             Color(red: 0, green: 0.94, blue: 1),
            ], 3),
        preview: .image(UIImage(named: "neonJunglePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonJungle",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonPlasticBling: Theme = .init(
        id: "462EB197-1411-4701-804F-E034435BACBA",
        button: .init(
            background: .color(.white),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        edgeInsets: .init(top: 3, left: 1, bottom: 3, right: 1),
        background: .image(UIImage(named: "neonPlastic")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial(
            [Color(hex: "#FEF635"),
             Color(hex: "#00FFFF"),
             Color(hex: "#FF00F5"),
            ]),
        preview: .image(UIImage(named: "neonPlasticPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonPlastic",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonGlossiness: Theme = .init(
        id: "371750B8-A507-420D-841F-63EA3D9D704B",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "neonGlossiness")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        
        durationAnimation: 2,
        neonLinearAnimation: .radial(
            [Color(hex: "#00FFFF"),
             Color(hex: "#000AFF"),
            ]),
        preview: .image(UIImage(named: "neonGlossinessPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonGlossiness",
        iconColor: Color(hex: "#000AFF")
    )
    
    static var neonLustre: Theme = .init(
        id: "F1516588-830B-460A-9886-2BB0A94328DD",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: .white.opacity(0.8), size: 1)
        ),
        background: .image(UIImage(named: "neonLustre")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial(
            [Color(hex: "#FF00F5"),
             Color(hex: "#00FFFF"),
            ]),
        preview: .image(UIImage(named: "neonLustrePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonLustre",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var neonBalloons: Theme = .init(
        id: "D610B9CC-EE69-4A4C-B58F-556783C9D0C4",
        button: .init(
            background: .color(Color(red: 0.8, green: 0, blue: 1).opacity(0.5)),
            foregroundColor: Color(hex: "#00FFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: .clear, size: 0),
            shapeType: .CIRCLE
        ),
        edgeInsets: .init(top: 3, left: 1, bottom: 3, right: 1),
        background: .image(UIImage(named: "neonBalloons")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "neonBalloonsPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonBalloons",
        iconColor: Color(hex: "#C363FB")
    )
    
    static var neonTriangleNeon: Theme = .init(
        id: "1C29260F-4A3D-47C8-8BF2-6B6BFD3A31DE",
        button: .init(
            background: .color(.white),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 25,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "neonTriangleNeon")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonCharacter: true), 
        neonLinearAnimation: .radial(
            [Color(hex: "#FF00D6"),
             Color(hex: "#00FFFF"),
             Color(hex: "#000AFF"),
            ]),
        preview: .image(UIImage(named: "neonTriangleNeonPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "neonTriangleNeon",
        iconColor: Color(hex: "#FA00FF")
    )
}

//struct NeonTheme_Previews: PreviewProvider {
//    
//    struct Preview: View {
//        
//        let theme: Theme = .neonMagicLight
//        
//        var controller: KeyboardInputViewController = {
//            let controller = KeyboardInputViewController.preview
//            controller.state.autocompleteContext.suggestions = [
//                //                .init(text: "Foo"),
//                //                .init(text: "Bar", isAutocorrect: true),
//                //                .init(text: "Baz")
//            ]
//            
//            let theme: Theme = .neonMagicLight
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
//                neonPermission: .init(
//                    disableNeonCharacter: true,
//                    disableNeonBorder: true,
//                    disableNeonButton: true
//                ),
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
//                        duration: theme.durationAnimation ?? 0,
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
//                //                .background(controller.state.keyboardTheme.background.backgroundView)
//            }
//        }
//    }
//    
//    static var previews: some View {
//        Preview()
//    }
//}
