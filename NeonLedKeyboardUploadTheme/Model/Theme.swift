//
//  Theme.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import SwiftUI

public struct Theme: Codable, Equatable {
    public static func == (lhs: Theme, rhs: Theme) -> Bool {
        return lhs.id == rhs.id
    }
    
    var id: String
    var button: KeyboardStyle.Button?
    var shiftButton: KeyboardStyle.Background?
    var backspaceButton: KeyboardStyle.Background?
    var keyboardTypeButton: KeyboardStyle.Background?
    var spaceButton: KeyboardStyle.Background?
    var primaryButton: KeyboardStyle.Background?
    var emojiButton: KeyboardStyle.Background?
    var specialKey: String?
    var edgeInsets: CodableUIEdgeInsets?
    var background: KeyboardStyle.Background?
    var gifBackground: String?
    var actionCallout: KeyboardStyle.ActionCallout?
    var inputCallout: KeyboardStyle.InputCallout?
    var sound: SoundModel?
    var neonPermission: NeonPermission?
    var buttonNeonAnimation: [AnimationValueObject]?
    var backgroundNeonAnimation: [AnimationValueObject]?
    var durationAnimation: Double?
    var neonLinearAnimation: NeonLinearAnimation?
    var effect: EffectModel?
    var len: EffectModel?
    var preview: KeyboardStyle.Background?
    var name: String
    var imagePreview: String
    
    private enum CodingKeys: String, CodingKey {
        case id = "id"
        case button = "button"
        case shiftButton = "shiftButton"
        case backspaceButton = "backspaceButton"
        case keyboardTypeButton = "keyboardTypeButton"
        case spaceButton = "spaceButton"
        case primaryButton = "primaryButton"
        case emojiButton = "emojiButton"
        case specialKey = "specialKey"
        case edgeInsets = "edgeInsets"
        case background = "background"
        case gifBackground = "gifBackground"
        case actionCallout = "actionCallout"
        case inputCallout = "inputCallout"
        case sound = "sound"
        case neonPermission = "neonPermission"
        case buttonNeonAnimation = "buttonNeonAnimation"
        case backgroundNeonAnimation = "backgroundNeonAnimation"
        case durationAnimation = "durationAnimation"
        case neonLinearAnimation = "neonLinearAnimation"
        case effect = "effect"
        case len = "len"
        case preview = "preview"
        case name = "name"
        case imagePreview = "imagePreview"
    }
    
    public init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        self.id                     = try values.decode(String.self, forKey: .id)
        self.button                 = try values.decodeIfPresent(KeyboardStyle.Button.self, forKey: .button)
        self.shiftButton            = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .shiftButton)
        self.backspaceButton        = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .backspaceButton)
        self.keyboardTypeButton     = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .keyboardTypeButton)
        self.spaceButton            = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .spaceButton)
        self.primaryButton          = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .primaryButton)
        self.emojiButton            = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .emojiButton)
        self.specialKey             = try values.decodeIfPresent(String.self, forKey: .specialKey)
        self.edgeInsets             = try values.decodeIfPresent(CodableUIEdgeInsets.self, forKey: .edgeInsets)
        self.background             = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .background)
        self.gifBackground          = try values.decodeIfPresent(String.self, forKey: .gifBackground)
        self.sound                  = try values.decodeIfPresent(SoundModel.self, forKey: .sound)
        self.buttonNeonAnimation    = try values.decodeIfPresent([AnimationValueObject].self, forKey: .buttonNeonAnimation)
        self.backgroundNeonAnimation = try values.decodeIfPresent([AnimationValueObject].self, forKey: .backgroundNeonAnimation)
        self.neonPermission         = try values.decodeIfPresent(NeonPermission.self, forKey: .neonPermission) ?? .init()
        self.durationAnimation      = try values.decodeIfPresent(Double.self, forKey: .durationAnimation)
        self.neonLinearAnimation    =  try values.decodeIfPresent(NeonLinearAnimation.self, forKey: .neonLinearAnimation)
        self.actionCallout          = try values.decodeIfPresent(KeyboardStyle.ActionCallout.self, forKey: .actionCallout)
        self.inputCallout           = try values.decodeIfPresent(KeyboardStyle.InputCallout.self, forKey: .inputCallout)
        self.effect                 = try values.decodeIfPresent(EffectModel.self, forKey: .effect)
        self.len                    = try values.decodeIfPresent(EffectModel.self, forKey: .len)
        self.preview                = try values.decodeIfPresent(KeyboardStyle.Background.self, forKey: .preview)
        self.name                   = try values.decode(String.self, forKey: .name)
        self.imagePreview           = try values.decode(String.self, forKey: .imagePreview)
    }
    
    public func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        
//        encode for save theme Section
//        try container.encodeIfPresent(id, forKey: .id)
//        try container.encodeIfPresent(name, forKey: .name)
//        try container.encodeIfPresent(imagePreview, forKey: .imagePreview)
        
//        encode for save theme data
        try container.encodeIfPresent(id, forKey: .id)
        try container.encodeIfPresent(button, forKey: .button)
        try container.encodeIfPresent(shiftButton, forKey: .shiftButton)
        try container.encodeIfPresent(backspaceButton, forKey: .backspaceButton)
        try container.encodeIfPresent(keyboardTypeButton, forKey: .keyboardTypeButton)
        try container.encodeIfPresent(spaceButton, forKey: .spaceButton)
        try container.encodeIfPresent(primaryButton, forKey: .primaryButton)
        try container.encodeIfPresent(emojiButton, forKey: .emojiButton)
        try container.encodeIfPresent(specialKey, forKey: .specialKey)
        try container.encodeIfPresent(edgeInsets, forKey: .edgeInsets)
        try container.encodeIfPresent(background, forKey: .background)
        try container.encodeIfPresent(gifBackground, forKey: .gifBackground)
        try container.encodeIfPresent(buttonNeonAnimation, forKey: .buttonNeonAnimation)
        try container.encodeIfPresent(backgroundNeonAnimation, forKey: .backgroundNeonAnimation)
        try container.encodeIfPresent(neonPermission, forKey: .neonPermission)
        try container.encodeIfPresent(durationAnimation, forKey: .durationAnimation)
        try container.encodeIfPresent(neonLinearAnimation, forKey: .neonLinearAnimation)
        try container.encodeIfPresent(actionCallout, forKey: .actionCallout)
        try container.encodeIfPresent(inputCallout, forKey: .inputCallout)
        try container.encodeIfPresent(sound, forKey: .sound)
        try container.encodeIfPresent(effect, forKey: .effect)
        try container.encodeIfPresent(len, forKey: .len)
        try container.encodeIfPresent(preview, forKey: .preview)
        try container.encodeIfPresent(name, forKey: .name)
        try container.encodeIfPresent(imagePreview, forKey: .imagePreview)
    }
    
    /// - Parameters:
    ///   - button: style of key
    ///   - background: style of background of keyboard
    ///   - callout: style for action click on button
    ///   - sound: sound effect
    ///   - disableNeonAnimationCharacter: disbale animation on content of key
    ///   - disableNeonAnimationButton: disable animation of key
    ///   - buttonNeonAnimation: animation for key
    ///   - backgroundNeonAnimation: animation neon for background
    ///   - durationAnimation: duration animation
    ///   - neonLinearAnimation: style linear animation for button
    ///   - shapeType: shape type of keyboard
    init(
        id: String,
        button: KeyboardStyle.Button,
        shiftButton: KeyboardStyle.Background? = nil,
        backspaceButton: KeyboardStyle.Background? = nil,
        keyboardTypeButton: KeyboardStyle.Background? = nil,
        spaceButton: KeyboardStyle.Background? = nil,
        primaryButton: KeyboardStyle.Background? = nil,
        emojiButton: KeyboardStyle.Background? = nil,
        specialKey: String? = nil,
        background: KeyboardStyle.Background,
        actionCallout: KeyboardStyle.ActionCallout = .bright,
        inputCallout: KeyboardStyle.InputCallout = .bright,
        sound: SoundModel? = nil,
        neonPermission: NeonPermission = .init(),
        buttonNeonAnimation: [AnimationValueObject]? = nil,
        backgroundNeonAnimation: [AnimationValueObject]? = nil,
        durationAnimation: Double = 5.0,
        neonLinearAnimation: NeonLinearAnimation = .none,
        effect: EffectModel? = nil,
        len: EffectModel? = nil,
        preview: KeyboardStyle.Background? = .color(.blue),
        name: String
    ) {
        self.id = id
        self.button = button
        self.shiftButton = shiftButton
        self.backspaceButton = backspaceButton
        self.keyboardTypeButton = keyboardTypeButton
        self.spaceButton = spaceButton
        self.primaryButton = primaryButton
        self.emojiButton = emojiButton
        self.specialKey = specialKey
        self.background = background
        self.actionCallout = actionCallout
        self.inputCallout = inputCallout
        self.sound = sound
        self.buttonNeonAnimation = buttonNeonAnimation
        self.backgroundNeonAnimation = backgroundNeonAnimation
        self.neonPermission = neonPermission
        self.durationAnimation = durationAnimation
        self.neonLinearAnimation = neonLinearAnimation
        self.effect = effect
        self.len = len
        self.preview = preview
        self.name = name
        self.imagePreview = name + "Preview"
    }
    
    func toJsonString() -> String? {
        do {
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(self)

            // Convert JSON data to a String
            if let jsonString = String(data: jsonData, encoding: .utf8) {
                return jsonString
            }
            return nil
        } catch {
            print("Error encoding to JSON: \(error)")
            return nil
        }
    }
    
    func toJsonData() -> Data? {
        do {
            let encoder = JSONEncoder()
            let jsonData = try encoder.encode(self)

            return jsonData
        } catch {
            print("Error encoding to JSON: \(error)")
            return nil
        }
    }
    
//    init(
//        _ themeObject: ThemeObject
//    ) {
//        self.button = .preview1
//        self.button = .init(
//            background: .init(
//                backgroundColor: Color(hex: themeObject.backgroundColorKey ?? ""),
//                backgroundGradient: themeObject.backgroundGradientKey?.map({ Color(hex: $0) ?? .clear }),
//                imageData: UIImage(named: themeObject.backgroundImageKey ?? "")?.pngData() ?? Data()
//            ),
//            foregroundColor: Color(themeObject.foregroundColor ?? ""),
//            font: .init(.callout, .black),
//            cornerRadius: themeObject.cornerRadius,
//            border: .init(color: Color(hex: themeObject.borderColor ?? "") ?? .clear, size: themeObject.borderSize ?? 0)
//        )
//        self.background = .init(
//            backgroundColor: Color(hex: themeObject.backgroundColor ?? ""),
//            backgroundGradient: themeObject.backgroundGradient?.map({ Color(hex: $0) ?? .clear }),
//            imageData: UIImage(named: themeObject.backgroundImage ?? "")?.pngData() ?? Data()
//        )
//        self.sound = .init(name: "cat_audio", volume: 5)
//        self.buttonNeonAnimation = themeObject.buttonAnimation
//        self.backgroundNeonAnimation = themeObject.backgroundAnimation
//        self.disableNeonAnimationCharacter = themeObject.disableAnimationContent ?? false
//        self.disableNeonAnimationButton = themeObject.disableAnimationKey ?? false
//        self.durationAnimation = themeObject.duration ?? 5.0
//        self.neonLinearAnimation = themeObject.effect ?? .none
//        self.actionCallout = .standard
//        self.inputCallout = .standard
//    }
}

extension Theme {
    
    /// Bright
    static var bright: Theme = .init(
        id: "1475559E-760C-473A-A42A-81EA73E88AC8",
        button: .init(
            background: KeyboardStyle.Background.color(Color("standardButtonBackground")),
            foregroundColor: Color("standardButtonForeground"),
            font: .body,
            cornerRadius: 10,
            border: .init(color: Color.clear, size: 0),
            shadow: .init(color: .clear, size: 0)
        ),
        background: .color(Color("standardKeyboardBackground")),
        actionCallout: .init(
            callout: .init(
                backgroundColor: Color("standardButtonBackground"),
                borderColor: Color(hex: "C6C7CD") ?? Color("standardButtonBackground"),
                shadowColor: .clear
            ),
            selectedBackgroundColor: Color(hex: "CECDD4"),
            selectedForegroundColor: Color.white
        ),
        inputCallout: .init(
            callout: .init(
                backgroundColor: Color("standardButtonBackground"),
                borderColor: Color(hex: "C6C7CD") ?? Color("standardButtonBackground"),
                shadowColor: .clear,
                hiddeen: true
            )
        ),
        name: "bright"
    )
    
    /// Dark
    static var dark: Theme = .init(
        id: "1475559E-760C-473A-A42A-819973E88AC8",
        button: .init(
            background: .color(Color(hex: "373A3F")!),
            foregroundColor: Color(hex: "E1E1E1")!,
            font: .body,
            cornerRadius: 10,
            border: .init(color: Color(hex: "373A3F")!, size: 1),
            shadow: .init(color: .clear, size: 0)
        ),
        background: .color(Color(hex: "181B22")!),
        actionCallout: .init(
            callout: .init(
                backgroundColor: Color(hex: "5C5C5E")!,
                borderColor: Color(hex: "5C5C5E")!,
                shadowColor: .clear,
                textColor: Color(hex: "E5E5E5")!
            ),
            selectedBackgroundColor: Color(hex: "7B7B7E"),
            selectedForegroundColor: Color.white
        ),
        inputCallout: .init(
            callout: .init(
                backgroundColor: Color(hex: "888888")!,
                borderColor: Color(hex: "888888")!,
                shadowColor: .clear,
                textColor: Color(hex: "B6B6B6")!,
                hiddeen: true
            )
        ),
        name: "dark"
    )
    
    /// Color Strip
    static var colorTrip: Theme = .init(
        id: "1475559E-760C-473A-A42A-81EA73E88A33",
        button: .init(
            background: .color(.clear),
            foregroundColor: .brown,
            font: .body,
            cornerRadius: 10,
            border: .init(color: .black, size: 1),
            shadow: .init(color: .clear, size: 0)
        ),
        background: .color(.black),
        actionCallout: .init(
            callout: .init(
                backgroundColor: .black.opacity(0.3),
                borderColor: Color(hex: "5C5C5E")!,
                shadowColor: .clear,
                textColor: Color(hex: "E5E5E5")!,
                border: .init(color: .yellow, size: 2)
            ),
            selectedBackgroundColor: .black.opacity(0.6),
            selectedForegroundColor: Color.white
        ),
        inputCallout: .init(
            callout: .init(
                backgroundColor: .black.opacity(0.3),
                borderColor: .black,
                shadowColor: .clear,
                textColor: .blue,
                hiddeen: true,
                border: .init(color: .yellow, size: 2)
            )
        ),
        neonLinearAnimation: .LTR(nil, 2),
        name: "colorTrip"
    )
    
}

struct CustomKeyboard_Previews: PreviewProvider {
    
    struct Preview: View {

        let theme: Theme = .bright
        
        let controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            
            let theme: Theme = .bright
            
            controller.services.styleProvider = CustomKeyStyleProvider(
                buttonStyle: theme.button,
                actionCallout: theme.actionCallout ?? .bright,
                inputCallout: theme.inputCallout ?? .bright,
                keyboardContext: controller.state.keyboardContext)
            
//                    customThemeViewModel.themeCustom.background = .image(backgroundImage?.jpegData(compressionQuality: 0.1) ?? Data())
            
            controller.services.actionHandler = CustomKeyActionHandler(theme: theme, controller: controller)
            
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
                buttonContent: { $0.view },
                buttonView: { $0.view },
                emojiKeyboard: { $0.view },
                toolbar: { $0.view }
            )
        }

        var body: some View {
            VStack(spacing: 10) {
                Group {
//                    ZStack {
//                        keyboard.offset(x: -200)
//                        keyboard.offset(x: 200)
//                    }
//
//                    keyboard.frame(width: 250)
                    
//                    SystemKeyboard(
//                        state: controller.state,
//                        services: controller.services,
//                        buttonContent: { $0.view },
//                        buttonView: { $0.view },
//                        emojiKeyboard: { $0.view },
//                        toolbar: { $0.view }
//                    )
                    
                    SystemKeyboard(
                        state: controller.state,
                        services: controller.services,
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
                .background(
//                    controller.state.keyboardTheme.background.backgroundView
                )
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
