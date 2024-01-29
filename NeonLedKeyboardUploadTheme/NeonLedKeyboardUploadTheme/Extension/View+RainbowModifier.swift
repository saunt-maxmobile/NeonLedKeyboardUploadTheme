//
//  View+RainbowModifier.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
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
    var animation: Animation {
        Animation
            .linear(duration: duration)
            .repeatForever(autoreverses: false)
    }

    @State var smallZoom = false

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
//                case .LTR(let count):
//                    gradient
//                        .frame(width: proxy.size.width * count)
//                        .offset(x: self.isOn ? proxy.size.width * count : 0)
//                        .allowsHitTesting(false)
//                    gradient
//                        .frame(width: proxy.size.width * count)
//                        .offset(x: self.isOn ? 0 : -proxy.size.width * count)
//                        .allowsHitTesting(false)
//                case .RTL(let count):
//                    gradient
//                        .frame(width: proxy.size.width * count)
//                        .offset(x: self.isOn ? -proxy.size.width * (count + 1) : -proxy.size.width)
//                        .allowsHitTesting(false)
//                    gradient
//                        .frame(width: proxy.size.width * count)
//                        .offset(x: self.isOn ? -proxy.size.width*(count - 1) : proxy.size.width)
//                        .allowsHitTesting(false)
//                case .BTT(let count):
//                    verticalGradient
//                        .frame(height: proxy.size.height * count)
//                        .offset(y: self.isOn ? -proxy.size.height * (count+count-1) : -proxy.size.height * (count - 1))
//                        .allowsHitTesting(false)
//                    verticalGradient
//                        .frame(height: proxy.size.height * count)
//                        .offset(y: self.isOn ? -proxy.size.height*(count - 1) : proxy.size.height)
//                        .allowsHitTesting(false)
//                case .TTB(let count):
//                    verticalGradient
//                        .frame(height: proxy.size.height * count)
//                        .offset(y: self.isOn ? proxy.size.height * (count) : 0)
//                        .allowsHitTesting(false)
//                    verticalGradient
//                        .frame(height: proxy.size.height * count)
//                        .offset(y: self.isOn ? 0 : -proxy.size.height * count )
//                        .allowsHitTesting(false)
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
                            .clipShape(Circle())
                            .scaleEffect(self.isOn ? (proxy.size.width/proxy.size.height) * CGFloat(colors.count) : (proxy.size.width/proxy.size.height), anchor: .center)
                        
                        RadialGradient(colors: colors, center: .center, startRadius: 0, endRadius: proxy.size.height / 2)
                            .frame(width: proxy.size.width, height: proxy.size.height)
                            .clipShape(Circle())
                            .scaleEffect(self.isOn ? (proxy.size.width/proxy.size.height) : 0, anchor: .center)
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
            withAnimation(self.animation) {
                self.isOn = true
                self.smallZoom = true
            }
        }
        .allowsHitTesting(false)
    }
}

#Preview {
    ScrollView {
        VStack (spacing: 10) {
            
            
            
            
            
            
            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .LTR(
//                    [Color(red: 0, green: 0.94, blue: 1),
//        //             Color(red: 0.98, green: 0, blue: 1),
//                     Color(red: 0.98, green: 0, blue: 1),
//                     Color(red: 0, green: 0.94, blue: 1)
//                    ], 3))
                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .none, animationValueObjects: [
                    .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "#33FF00", "#FEF635", "#EB6300"], .right, .conic),
                    .init(colors: ["#01FFE1", "#BD00FF", "#01FFE1", "#33FF00", "#FEF635", "#EB6300", "#00FFFF"], .downRight, .conic),
                    .init(colors: ["#BD00FF", "#01FFE1", "#33FF00", "#FEF635", "#EB6300", "#00FFFF", "#01FFE1"], .down, .conic),
                    .init(colors: ["#01FFE1", "#33FF00", "#FEF635", "#EB6300", "#00FFFF", "#01FFE1", "#BD00FF"], .downLeft, .conic),
                    .init(colors: ["#33FF00", "#FEF635", "#EB6300", "#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", ], .left, .conic),
                    .init(colors: ["#FEF635", "#EB6300", "#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "#33FF00", ], .upLeft, .conic),
                    .init(colors: ["#EB6300", "#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "#33FF00", "#FEF635", ], .up, .conic),
                    .init(colors: ["#00FFFF", "#01FFE1", "#BD00FF", "#01FFE1", "#33FF00", "#FEF635", "#EB6300", ], .upRight, .conic),
                ])
            
//            Text("LTR")
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .LTR(nil, 3))
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .LTR([.red, .blue, .yellow, .red], 3))
//            
//            Text("RTL")
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .RTL(nil, 3))
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .RTL([.red, .blue, .black, .gray, .green, .yellow, .red], 3))
//
//            Text("TTB")
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .TTB(nil, 3))
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .TTB([.red, .blue, .yellow, .red], 3))
//            
//            Text("BTT")
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .BTT(nil, 3))
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .stroke(Color.black, lineWidth: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .BTT([.red, .blue, .yellow, .red], 3))
//            
//            Text("Radial")
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .radial(nil))
//            
//            RoundedRectangle(cornerRadius: 10)
//                .inset(by: 5)
//                .frame(width: 300, height: 100)
//                .rainbowAnimation(height: 100, duration: 3, neonLinearAnimation: .radial([.white, .white, .blue, .blue, .red, .red, .clear]))
        }
    }
    

}
