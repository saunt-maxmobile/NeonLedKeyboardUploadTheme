//
//  ColotTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var colorLipPink: Theme = .init(id: "F46D7C22-770F-4989-BB27-770FDC7025E3",
        button: .init(
            background: .color(Color.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#FF9292")),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "colorLipPinkPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorLipPink"
    )
    
    static var colorLeaf: Theme = .init(id: "388A0463-D80D-4976-B2E9-6359FC4CD395",
        button: .init(
            background: .color(Color(hex: "#168469").opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#99BBAD")),
        
        preview: .image(UIImage(named: "colorLeafPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorLeaf"
    )
    
    static var colorCyan: Theme = .init(id: "AE7420EA-40BF-4E3B-A765-3EAA2C2A4E1E",
        button: .init(
            background: .color(Color.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#61C0BF")),
        
        preview: .image(UIImage(named: "colorCyanPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorCyan"
    )
    
    static var colorOcean: Theme = .init(id: "E2B5EB86-F27F-41CE-B52C-EA7437A82B7B",
        button: .init(
            background: .color(Color(hex: "#006660").opacity(0.3)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#99DDCC")),
        
        preview: .image(UIImage(named: "colorOceanPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorOcean"
    )
    
    static var colorPurple: Theme = .init(id: "22272F81-BC5F-454B-B100-97061D26DCD0",
        button: .init(
            background: .color(Color(hex: "#8400B2").opacity(0.8)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#D59BF6")),
        
        preview: .image(UIImage(named: "colorPurplePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorPurple"
    )
    
    static var colorYellow: Theme = .init(id: "81D92543-6E6B-4E73-8B8F-14F3620D71C8",
        button: .init(
            background: .color(Color.white.opacity(0.5)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#F8B400")),
        
        preview: .image(UIImage(named: "colorYellowPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorYellow"
    )
    
    static var colorLove: Theme = .init(id: "AC2F69DD-5CF6-4863-86ED-E48BE32CCB1A",
        button: .init(
            background: .color(Color(hex: "#FA98B0").opacity(0.3)),
            foregroundColor: Color(hex: "#E75681"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: Color(hex: "#FA98B0"), size: 2)
        ),
        background: .color(Color(hex: "#FFCDCD")),
        
        preview: .image(UIImage(named: "colorLovePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorLove"
    )
    
    static var colorWater: Theme = .init(id: "25FC7C82-14C3-4096-BBC1-02888037ED67",
        button: .init(
            background: .color(Color.white.opacity(0.3)),
            foregroundColor: Color(hex: "#008585"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: Color(hex: "#008585").opacity(0.5), size: 2)
        ),
        background: .color(Color(hex: "#CFF1EF")),
        
        preview: .image(UIImage(named: "colorWaterPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorWater"
    )
    
    static var colorGreen: Theme = .init(id: "13BEA090-5BCE-4843-A17B-453C77467E54",
        button: .init(
            background: .color(Color(hex: "#407000")),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#729D39")),
        
        preview: .image(UIImage(named: "colorGreenPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorGreen"
    )
    
    static var colorOrange: Theme = .init(id: "29313504-CC01-4F6A-85F4-C6582FB1E962",
        button: .init(
            background: .color(Color.white),
            foregroundColor: Color(hex: "#BC4616"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#D57149")),
        
        preview: .image(UIImage(named: "colorOrangePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorOrange"
    )
    
    static var colorTree: Theme = .init(id: "0E92A295-107B-4F36-BDDE-6F6E13522BE4",
        button: .init(
            background: .color(Color.white.opacity(0.4)),
            foregroundColor: Color.white,
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#678A74")),
        
        preview: .image(UIImage(named: "colorTreePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorTree"
    )
    
    static var colorHot: Theme = .init(id: "D5D81DE4-6F04-42EB-8D97-BAF77C310EB2",
        button: .init(
            background: .color(Color.white),
            foregroundColor: Color(hex: "#D17200"),
            font: .body,
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "#F5B971")),
        
        preview: .image(UIImage(named: "colorHotPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "colorHot"
    )
}

struct ColorTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .colorHot
        
        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
                //                .init(text: "Foo"),
                //                .init(text: "Bar", isAutocorrect: true),
                //                .init(text: "Baz")
            ]
            
            let theme: Theme = .colorHot
            
            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
            
            controller.state.keyboardContext.setLocale(.kurdish_sorani_pc)
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
                        buttonContent: { param in
                            switch param.item.action {
                            case .backspace:
                                Image(systemName: "trash").foregroundColor(Color.red)
                            default: param.view
                            }
                        },
                        buttonView: { param in
                            switch param.item.action {
                            case .space:
                                Text("This is a space bar replacement")
                                    .frame(maxWidth: .infinity)
                                    .multilineTextAlignment(.center)
                            default: param.view
                            }
                        },
                        emojiKeyboard: { _ in
                            emojiKeyboard
                        },
                        toolbar: { $0.view }
                    )
                }
                .background(theme.background?.backgroundView)
            }
        }
    }
    
    static var previews: some View {
        Preview()
    }
}
