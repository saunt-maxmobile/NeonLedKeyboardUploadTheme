//
//  AnimationValueObject.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import QuartzCore
import SwiftUI

public struct AnimationValueObject: Codable {
    var color: [String]?
    var direction: AnimatedGradientViewDirection?
    var layerType: CAGradientLayerType?
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        self.color = try values.decodeIfPresent([String].self, forKey: .color)
        self.direction = try values.decodeIfPresent(AnimatedGradientViewDirection.self, forKey: .direction)
        self.layerType = try values.decodeIfPresent(CAGradientLayerType.self, forKey: .layerType)
    }
    
    init(colors: [String]?,_ direction: AnimatedGradientViewDirection,_ layerType: CAGradientLayerType?) {
        self.color = colors
        self.direction = direction
        self.layerType = layerType
    }
    
    public func getColorStyle() -> AnimatedGradientView.AnimationValue {
        return (colors: self.color ?? [], self.direction ?? .upLeft, self.layerType ?? .axial)
    }
}

extension AnimatedGradientViewDirection: Codable {
}

extension CAGradientLayerType: Codable {
}

