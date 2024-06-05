//
//  AnimatedGradient.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import Foundation
import SwiftUI

struct AnimatedGradient: UIViewRepresentable {
    
    var animationDuration: Double = 5.0
    var animationValues: [AnimatedGradientView.AnimationValue]?
    
    func makeUIView(context: Context) -> AnimatedGradientView {
        let gradientView = AnimatedGradientView()
        
        gradientView.animationDuration = animationDuration
        gradientView.animationValues = animationValues
        
        return gradientView
    }
    
    
    func updateUIView(_ uiView: AnimatedGradientView, context: Context) {
        
    }
    
}

#Preview(body: {
    AnimatedGradient(
        animationValues: [
            (colors: ["#FEAC5E", "#C779D0", "#fcb045"], .upLeft, .radial),
            (colors: ["#C779D0", "#fcb045", "#FEAC5E"], .downRight, .radial),
//            (colors: ["#C779D0", "#fcb045", "#FEAC5E"], .upLeft, .radial),
//            (colors: ["#fcb045", "#FEAC5E", "#C779D0"], .upLeft, .radial),
            
//            .init(colors: ["#FEAC5E", "#C779D0", "#fcb045"], .down, .radial),
//            .init(colors: ["#43cea2", "#185a9d"], .down, .radial),
//            .init(colors: ["#003973", "#E5E5BE"], .downRight, .radial)
        ]
    )
})

struct BindingAnimationView: UIViewRepresentable {
    
    @Binding var duration: Double
    @Binding var animationValues: [AnimatedGradientView.AnimationValue]?
    
    let gradientView = AnimatedGradientView()
    
    func makeUIView(context: Context) -> AnimatedGradientView {
        
        gradientView.animationDuration = duration
        gradientView.animationValues = animationValues
        
        return gradientView
    }
    
    func updateUIView(_ uiView: AnimatedGradientView, context: Context) {
        gradientView.animationDuration = duration
        gradientView.animationValues = animationValues
    }
}
