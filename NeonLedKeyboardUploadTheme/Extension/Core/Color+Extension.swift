//
//  Color+Extension.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import SwiftUI

extension Color {
    
    init?(from signedDecimal: Int) {
        if signedDecimal == 0 {
            self = .clear; return
        }
        
        let _input: Int32 = Int32(signedDecimal)
        let _inputCastUInt32: UInt32 = UInt32(bitPattern: _input)
        let _hexColor_ARGB: String = String(_inputCastUInt32, radix: 16, uppercase: true)
        self.init(hex: _hexColor_ARGB)
        
        // print("______ from signedDecimal: \(signedDecimal)")
    }
    
    init?(hex_ARGB: String) {
        var hexSanitized = hex_ARGB.trimmingCharacters(in: .whitespacesAndNewlines)
        hexSanitized = hexSanitized.replacingOccurrences(of: "#", with: "")

        var rgb: UInt64 = 0

        var r: CGFloat = 0.0
        var g: CGFloat = 0.0
        var b: CGFloat = 0.0
        var a: CGFloat = 1.0

        let length = hexSanitized.count
        guard length >= 8 else { return nil }

        guard Scanner(string: hexSanitized).scanHexInt64(&rgb) else { return nil }

        a = CGFloat((rgb & 0xFF000000) >> 24) / 255.0
        r = CGFloat((rgb & 0x00FF0000) >> 16) / 255.0
        g = CGFloat((rgb & 0x0000FF00) >> 8) / 255.0
        b = CGFloat(rgb & 0x000000FF) / 255.0
        
        // print("______ r g b: \(r), \(g), \(b)")

        self.init(red: r, green: g, blue: b, opacity: a)
    }
    
    init(hex: String) {
            let hex = hex.trimmingCharacters(in: CharacterSet.alphanumerics.inverted)
            var int: UInt64 = 0
            Scanner(string: hex).scanHexInt64(&int)
            let a, r, g, b: UInt64
            switch hex.count {
            case 3: // RGB (12-bit)
                (a, r, g, b) = (255, (int >> 8) * 17, (int >> 4 & 0xF) * 17, (int & 0xF) * 17)
            case 6: // RGB (24-bit)
                (a, r, g, b) = (255, int >> 16, int >> 8 & 0xFF, int & 0xFF)
            case 8: // ARGB (32-bit)
                (a, r, g, b) = (int >> 24, int >> 16 & 0xFF, int >> 8 & 0xFF, int & 0xFF)
            default:
                (a, r, g, b) = (1, 1, 1, 0)
            }

            self.init(
                .sRGB,
                red: Double(r) / 255,
                green: Double(g) / 255,
                blue:  Double(b) / 255,
                opacity: Double(a) / 255
            )
        }
}
