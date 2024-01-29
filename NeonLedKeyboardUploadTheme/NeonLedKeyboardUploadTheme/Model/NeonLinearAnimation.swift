//
//  NeonLinearAnimation.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import SwiftUI

public enum NeonLinearAnimation: Codable {
    
    case none
    case random
    case LTR([Color]?, CGFloat)
    case RTL([Color]?, CGFloat)
    case BTT([Color]?, CGFloat)
    case TTB([Color]?, CGFloat)
    case radial([Color]?)
}

enum NeonStyle: String, CaseIterable, Equatable {
    //    public typealias AnimationValue = .init(colors: [String], Direction, CAGradientLayerType)
    //    public typealias Direction = AnimatedGradientViewDirection
    
    init?(rawValue: String) {
        let style = Self.allCases.first(where: { $0.rawValue.localizedLowercase == rawValue.localizedLowercase })
        guard let style = style else { return nil }
        self = style
    }
    
    case none
    case standard
    case colorStrip
    
    case colorRotate4Axial
    case colorRotate4Conic
    case colorRotate4Radial
    
    case colorRotate8Axial
    case colorRotate8Conic
    case colorRotate8Radial
    
    public func getStyle() -> [AnimationValueObject]? {
        switch self {
        case .none:
            return nil
        case .standard:
            return standardStyle
        case .colorStrip:
            return colorStripStyle
            
        /// Rotate 4 direction
        case .colorRotate4Axial:
            return colorRotation4Axial
        case .colorRotate4Conic:
            return colorRotation4Conic
        case .colorRotate4Radial:
            return colorRotation4Radius
            
        ///  Rotate 8 direction
        case .colorRotate8Axial:
            return colorRotation8Axial
        case .colorRotate8Conic:
            return colorRotation8Conic
        case .colorRotate8Radial:
            return colorRotation8Radial
        }
    }
    
    var standardStyle: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .down, .axial),
            .init(colors: ["#FEAC5E", "#C779D0", "#fcb045"], .down, .axial),
            .init(colors: ["#43cea2", "#185a9d"], .down, .axial),
            .init(colors: ["#003973", "#E5E5BE"], .downRight, .axial)
        ]
    }
    
    var colorStripStyle: [AnimationValueObject] {
        return [
            .init(colors: ["#fc00ff", "#00dbde"], .left, .radial),
            .init(colors: ["#4568DC", "#B06AB3"], .upLeft, .axial),
            .init(colors: ["#360033", "#0b8793"], .up, .radial),
            .init(colors: ["#03001e", "#7303c0", "#ec38bc", "#fdeff9"], .upRight, .radial)
        ]
    }
    
    //    MARK: Rotate 4 direction

    var colorRotation4Axial: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .axial),
            .init(colors: ["#FEAC5E", "#C779D0", "#fcb045"], .up, .axial),
            .init(colors: ["#43cea2", "#185a9d"], .left, .axial),
            .init(colors: ["#003973", "#E5E5BE"], .down, .axial)
        ]
    }
    
    var colorRotation4Conic: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .conic),
            .init(colors: ["#FEAC5E", "#C779D0", "#fcb045"], .up, .conic),
            .init(colors: ["#43cea2", "#185a9d"], .left, .conic),
            .init(colors: ["#003973", "#E5E5BE"], .down, .conic)
        ]
    }
    
    var colorRotation4Radius: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d", "#fcb045"], .right, .radial),
            .init(colors: ["#FEAC5E", "#C779D0", "#fcb045"], .up, .radial),
            .init(colors: ["#43cea2", "#185a9d"], .left, .radial),
            .init(colors: ["#003973", "#E5E5BE"], .down, .radial)
        ]
    }
    
    //    MARK: Ratate 8 direction

    var colorRotation8Axial: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d"], .right, .axial),
            .init(colors: ["#FEAC5E", "#fd1d1d"], .downRight, .axial),
            .init(colors: ["#43cea2", "#fd1d1d"], .down, .axial),
            .init(colors: ["#003973", "#fd1d1d"], .downLeft, .axial),
            .init(colors: ["#00bf8f", "#fd1d1d"], .left, .axial),
            .init(colors: ["#E55D87", "#fd1d1d"], .upLeft, .axial),
            .init(colors: ["#fc00ff", "#fd1d1d"], .up, .axial),
            .init(colors: ["#fc00ff", "#fd1d1d"], .upRight, .axial)
        ]
    }
    
    var colorRotation8Conic: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d"], .right, .conic),
            .init(colors: ["#FEAC5E", "#fd1d1d"], .downRight, .conic),
            .init(colors: ["#43cea2", "#fd1d1d"], .down, .conic),
            .init(colors: ["#003973", "#fd1d1d"], .downLeft, .conic),
            .init(colors: ["#00bf8f", "#fd1d1d"], .left, .conic),
            .init(colors: ["#E55D87", "#fd1d1d"], .upLeft, .conic),
            .init(colors: ["#fc00ff", "#fd1d1d"], .up, .conic),
            .init(colors: ["#fc00ff", "#fd1d1d"], .upRight, .conic)
        ]
    }
    
    var colorRotation8Radial: [AnimationValueObject] {
        return [
            .init(colors: ["#833ab4", "#fd1d1d"], .right, .radial),
            .init(colors: ["#FEAC5E", "#fd1d1d"], .downRight, .radial),
            .init(colors: ["#43cea2", "#fd1d1d"], .down, .radial),
            .init(colors: ["#003973", "#fd1d1d"], .downLeft, .radial),
            .init(colors: ["#00bf8f", "#fd1d1d"], .left, .radial),
            .init(colors: ["#E55D87", "#fd1d1d"], .upLeft, .radial),
            .init(colors: ["#fc00ff", "#fd1d1d"], .up, .radial),
            .init(colors: ["#fc00ff", "#fd1d1d"], .upRight, .radial)
        ]
    }
}
