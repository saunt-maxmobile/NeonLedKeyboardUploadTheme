//
//  GradientPhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var cuteRainbow: Theme = .init(
        id: "43b753fa-2559-4058-b6f6-a55f4a1b9e38",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rainbow1",
        background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rainbow1.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRainbow"
    )
    
    static var cuteFrog: Theme = .init(
        id: "a059c95b-c613-4e0c-9415-d3411676f80b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Frog.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Frog.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Frog.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Frog.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Frog.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Frog.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Frog.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Frog",
        background: .image(UIImage(named: "Keyboard.Key.Frog.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Frog.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteFrog"
    )
    
    static var cuteRabbit: Theme = .init(
        id: "6885dab9-1803-4848-a16f-b3091faf1896",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rabbit.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rabbit",
        background: .image(UIImage(named: "Keyboard.Key.Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRabbit"
    )
    
    static var cuteDog: Theme = .init(
        id: "a9da740c-fbf2-47a6-9753-921f4d3e8e65",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Dog.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Dog.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Dog.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Dog",
        background: .image(UIImage(named: "Keyboard.Key.Dog.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Dog.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteDog"
    )
    
    static var cuteParrot: Theme = .init(
        id: "e0490df8-61fa-41b3-aeb6-eab7741f54c3",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Parrot.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Parrot.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Parrot.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Parrot",
        background: .image(UIImage(named: "Keyboard.Key.Parrot.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Parrot.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteParrot"
    )
    
    static var cuteRabbit2: Theme = .init(
        id: "9635be73-17e0-4072-a6f3-eebaaa3c567f",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Parrot.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rabbit2",
        background: .color(.white),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRabbit2"
    )
    
    static var cuteShibaInu: Theme = .init(
        id: "abbe272d-4e91-4db5-a920-f734f19a2db7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.ShibaInu.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.ShibaInu",
        background: .image(UIImage(named: "Keyboard.Key.ShibaInu.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.ShibaInu.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteShibaInu"
    )
    
    static var cuteAnimal: Theme = .init(
        id: "662fc3af-c570-4c83-a4e8-4acc47aceed8",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CuteAnimal",
        background: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteAnimal"
    )
    
    static var cuteCatlook: Theme = .init(
        id: "63b2d86d-c13b-4a10-828d-7c5a29cdf9e2",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatLook.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatLook.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CatLook.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CatLook",
        background: .image(UIImage(named: "Keyboard.Key.CatLook.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatLook.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCatlook"
    )
    
    static var cutePinkStar: Theme = .init(
        id: "dd98d0e0-093f-4ac6-8eb8-551fb1e70d1b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.PinkStar.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.PinkStar",
        background: .image(UIImage(named: "Keyboard.Key.PinkStar.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.PinkStar.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePinkStar"
    )
    
    static var cuteGreenGrass: Theme = .init(
        id: "b252153c-331f-4d09-93e6-65d7f9678d0a",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.GreenGrass.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.GreenGrass",
        background: .image(UIImage(named: "Keyboard.Key.GreenGrass.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.GreenGrass.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteGreenGrass"
    )
    
    static var cuteDusk: Theme = .init(
        id: "6907ff8d-5b9f-490f-ad8e-f1573b5354de",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Dusk.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Dusk.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Dusk.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Dusk.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Dusk.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Dusk.Func"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Dusk.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Dusk",
        background: .image(UIImage(named: "Keyboard.Key.Dusk.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Dusk.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteDusk"
    )
    
    static var cuteSpring: Theme = .init(
        id: "6907ff8d-5b9f-490f-ad8e-f1573b5354de",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Spring.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Spring.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Spring.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Spring.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Spring.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Spring.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Spring.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Spring",
        background: .image(UIImage(named: "Keyboard.Key.Spring.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Spring.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteSpring"
    )
}

struct CuteTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .cuteSpring

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .cuteSpring
            
            controller.services.styleProvider = CustomStyleProvider(
                button: theme.button,
                shiftButton: theme.shiftButton,
                backspaceButton: theme.backspaceButton,
                keyboardTypeButton: theme.keyboardTypeButton,
                spaceButton: theme.spaceButton,
                primaryButton: theme.primaryButton,
                emojiButton: theme.emojiButton,
                actionCallout: theme.actionCallout,
                inputCallout: theme.inputCallout,
                keyboardContext: controller.state.keyboardContext
            )
            
            controller.state.keyboardContext.setLocale(.english)
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
                        effect: theme.effect,
                        specialKey: theme.specialKey,
                        buttonContent: { $0.view },
                        buttonView: { $0.view },
                        emojiKeyboard: { $0.view },
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
