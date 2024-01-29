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
    AnimatedGradient()
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
