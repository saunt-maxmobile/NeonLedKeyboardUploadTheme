//
//  RainbowModifier.swift
//  LedKeyboard
//
//  Created by MaxMobile Software on 29/11/2023.
//

import Foundation
import SwiftUI
import Combine

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
    
    @State private var colorIndex = 0
    @State private var colors: [Color] = []
    @State private var colorLinear: [Color] = []
    
    let timer = Timer.publish(every: 0.12,
                                   on: .main,
                                  in: .common).autoconnect()

    func body(content: Content) -> some View {
        
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
                    VStack {
                        RadialGradient(colors: self.colors,
                                       center: .center,
                                       startRadius: 10,
                                       endRadius: 200)
                            .animation(Animation.easeInOut.speed(0.12),
                                       value: colorIndex)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                default:
                    Group{}
                }
        }
        })
        .mask(content)
        .onAppear {
            if case .radial(let array) = neonLinearAnimation {
                guard let array else { return }
                colorLinear = array.flatMap { Array(repeating: $0, count: 6) }
                colors = colorLinear.indices.map { colorLinear.wrap(index: (1 - $0)) }
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.1, execute: {
                withAnimation(self.animation) {
                    self.isOn = true
                    self.smallZoom = true
                }
            })
        }
        .allowsHitTesting(false)
        .onReceive(timer) { _ in
            colors = colorList()
        }
    }
    
    func colorList() -> [Color] {
        colorIndex += 1
        return colorLinear.indices.map  { colorLinear.wrap(index: (colorIndex - $0)) }
    }
}

extension Array {
    func wrap(index: Int) -> Element {
        let wrappedIndex = index >= 0 ? index % self.count : self.count + index % self.count
        return self[wrappedIndex]
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
            .rainbowAnimation(height: 100, duration: 2, neonLinearAnimation: .radial(
                [
                    Color(hex: "#00FFFF"),
                    Color(hex: "#000AFF"),
                ]
            ))
            
        
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
