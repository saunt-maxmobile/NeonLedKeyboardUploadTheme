//
//  RainbowModifier.swift
//  LedKeyboard
//
//  Created by MaxMobile Software on 29/11/2023.
//

import Foundation
import SwiftUI

extension View {
    func rainbowAnimation(height: CGFloat, duration: Double, neonLinearAnimation: NeonLinearAnimation, animationValueObjects: [AnimationValueObject]? = nil) -> some View {
        self.modifier(RainbowAnimation(height: height, duration: duration, neonLinearAnimation: neonLinearAnimation, animationValueObjects: animationValueObjects))
    }
}

struct RainbowAnimation: ViewModifier {
    
    var height: CGFloat
    var duration: Double
    var neonLinearAnimation: NeonLinearAnimation
    var animationValueObjects: [AnimationValueObject]?
    
    @State var isOn: Bool = false
    let hueColors = stride(from: 0, to: 1, by: 0.1).map {
        Color(hue: $0, saturation: 1, brightness: 1)
    }
    
    let radialConstant: CGFloat = 1.6
    
    var animation: Animation {
        Animation
            .linear(duration: duration)
            .repeatForever(autoreverses: false)
    }

    @State var smallZoom = false

    func body(content: Content) -> some View {
        
        let gradient = LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .leading, endPoint: .trailing)
        
        let verticalGradient = LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .top, endPoint: .bottom)
        
        let radialGradient = RadialGradient(gradient: Gradient(colors: hueColors + hueColors + hueColors + hueColors), center: .center, startRadius: 0, endRadius: 180)
        
        VStack {
        }
        .frame(maxWidth: .infinity)
        .frame(height: height)
//        content
        .overlay(content: {
            GeometryReader { proxy in
                if let buttonNeonAnimation = animationValueObjects {
                    AnimatedGradient(animationDuration: duration, animationValues: buttonNeonAnimation.map({ $0.getColorStyle() }))
                        .allowsHitTesting(false)
                }
                
                switch neonLinearAnimation {
                case .random:
                    Color.random()
                        .id(self.isOn ? UUID() : UUID())
                        .allowsHitTesting(false)
                case .LTR(let colors, let count):
                    // Done
                    if let colors {
                        LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? proxy.size.width * count : 0)
                            .allowsHitTesting(false)
                        LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? 0 : -proxy.size.width * count)
                            .allowsHitTesting(false)
                    } else {
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? proxy.size.width * count : 0)
                            .allowsHitTesting(false)
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? 0 : -proxy.size.width * count)
                            .allowsHitTesting(false)
                    }
                case .RTL(let colors, let count):
                    // Done
                    if let colors {
                        LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? -proxy.size.width * (count * 2 - 1) : -proxy.size.width * (count - 1))
                            .allowsHitTesting(false)
                        
                        LinearGradient(colors: colors, startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? -proxy.size.width * (count - 1) : proxy.size.width)
                            .allowsHitTesting(false)
                    } else {
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? -proxy.size.width * (count * 2 - 1) : -proxy.size.width * (count - 1))
                            .allowsHitTesting(false)
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .leading, endPoint: .trailing)
                            .frame(width: proxy.size.width * count)
                            .offset(x: self.isOn ? -proxy.size.width*(count - 1) : proxy.size.width)
                            .allowsHitTesting(false)
                    }
                case .BTT(let colors, let count):
                    // Done
                    if let colors {
                        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? -proxy.size.height * (count+count-1) : -proxy.size.height * (count - 1))
                            .allowsHitTesting(false)
                        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? -proxy.size.height*(count - 1) : proxy.size.height)
                            .allowsHitTesting(false)
                    } else {
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? -proxy.size.height * (count+count-1) : -proxy.size.height * (count - 1))
                            .allowsHitTesting(false)
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? -proxy.size.height*(count - 1) : proxy.size.height)
                            .allowsHitTesting(false)
                    }
                case .TTB(let colors, let count):
                    // Done
                    if let colors {
                        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? proxy.size.height * (count) : 0)
                            .allowsHitTesting(false)
                        LinearGradient(colors: colors, startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? 0 : -proxy.size.height * count )
                            .allowsHitTesting(false)
                    } else {
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? proxy.size.height * (count) : 0)
                            .allowsHitTesting(false)
                        LinearGradient(gradient: Gradient(colors: hueColors+hueColors), startPoint: .top, endPoint: .bottom)
                            .frame(height: proxy.size.height * count)
                            .offset(y: self.isOn ? 0 : -proxy.size.height * count )
                            .allowsHitTesting(false)
                    }
                case .radial(let colors):
                    if let colors {
                        RadialGradient(colors: colors, center: .center, startRadius: 0, endRadius: proxy.size.height / 2)
                            .frame(width: proxy.size.width, height: proxy.size.height)
//                            .clipShape(Circle())
                            .scaleEffect(self.isOn ? (proxy.size.width/proxy.size.height) * CGFloat(colors.count) * radialConstant : (proxy.size.width/proxy.size.height) * radialConstant, anchor: .center)
                        
                        RadialGradient(colors: colors, center: .center, startRadius: 0, endRadius: proxy.size.height / 2)
                            .frame(width: proxy.size.width, height: proxy.size.height)
//                            .clipShape(Circle())
                            .scaleEffect(self.isOn ? (proxy.size.width/proxy.size.height) * radialConstant : 0, anchor: .center)
                    } else {
                        RadialGradient(gradient: Gradient(colors: hueColors + hueColors + hueColors + hueColors), center: .center, startRadius: 0, endRadius: 180)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .clipShape(Circle())
                            .scaleEffect(self.isOn ? (proxy.size.width/proxy.size.height) * 4 : (proxy.size.width/proxy.size.height), anchor: /*@START_MENU_TOKEN@*/.center/*@END_MENU_TOKEN@*/)
                            .allowsHitTesting(false)
                        
                        RadialGradient(gradient: Gradient(colors: hueColors + hueColors + hueColors + hueColors), center: .center, startRadius: 0, endRadius: 180)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .clipShape(Circle())
                            .scaleEffect(self.smallZoom ? (proxy.size.width/proxy.size.height) : 0, anchor: .center)
                            .allowsHitTesting(false)
                    }
                default:
                    Group{}
                }
        }
        })
        .mask(content)
        .onAppear {
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                withAnimation(self.animation) {
                    self.isOn = true
                    self.smallZoom = true
                }
            })
        }
        .allowsHitTesting(false)
    }
}

#Preview {
    VStack (spacing: 100) {
        
//        RoundedRectangle(cornerRadius: 10)
//            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
//            .frame(width: 300, height: 100)
//            .rainbowAnimation(.BTT)
        
        RoundedRectangle(cornerRadius: 10)
            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
            .frame(width: 430, height: 276)
            .rainbowAnimation(height: 100, duration: 2, neonLinearAnimation: .radial([.black, .red, .red,.clear]))
            
        
        RoundedRectangle(cornerRadius: 10)
            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
            .frame(width: 300, height: 100)
            .rainbowAnimation(height: 100, duration: 5, neonLinearAnimation: .radial([.black, .red, .red, .blue, .blue, .clear]))
        
        RoundedRectangle(cornerRadius: 10)
            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
            .frame(width: 300, height: 100)
            .rainbowAnimation(height: 100, duration: 10, neonLinearAnimation: .radial([.black, .red, .red, .blue, .blue, .gray, .gray, .clear]))
            
//
//        RoundedRectangle(cornerRadius: 10)
//            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
//            .frame(width: 300, height: 100)
//            .rainbowAnimation(.neon)
//
//        RoundedRectangle(cornerRadius: 10)
//            .inset(by: 5)
//            .stroke(Color.black, lineWidth: 5)
//            .frame(width: 300, height: 100)
//            .rainbowAnimation(.neon)
//
//        Text("Rainbow ")
//            .font(.system(size: 100))
//            .rainbowAnimation(.landscape)
//
//        RoundedRectangle(cornerRadius: 10)
//            .inset(by: 5)
////            .stroke(Color.black, lineWidth: 5)
//            .frame(width: 300, height: 100)
//            .rainbowAnimation(.landscape)
    }

}
