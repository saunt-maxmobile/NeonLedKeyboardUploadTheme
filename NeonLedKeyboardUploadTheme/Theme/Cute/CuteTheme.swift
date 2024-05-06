//
//  GradientPhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var cuteRainbow1: Theme = .init(
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
        id: "94825414-3414-420c-a4ad-88d458c58a7b",
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
    
    static var cuteCat: Theme = .init(
        id: "8650bd8f-09b6-4613-8ad7-2ba8b3c8e62d",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Cat.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Cat.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Cat.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Cat.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Cat.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Cat.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Cat.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Cat",
        background: .image(UIImage(named: "Keyboard.Key.Cat.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Cat.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCat"
    )
    
    static var cutePixal: Theme = .init(
        id: "4aa89fd4-c67e-4679-a5d8-542070b34835",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Pixal.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Pixal.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Pixal.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Pixal.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Pixal.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Pixal.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Pixal.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Pixal",
        background: .image(UIImage(named: "Keyboard.Key.Pixal.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Pixal.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePixal"
    )
    
    static var cuteFrogKey: Theme = .init(
        id: "dd9c9a73-9f7b-47f1-ad19-ba1eee480e77",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.FrogKey.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.FrogKey.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.FrogKey",
        background: .image(UIImage(named: "Keyboard.Key.FrogKey.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.FrogKey.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteFrogKey"
    )
    
    static var cuteHorror: Theme = .init(
        id: "563c912c-7799-4a57-a3fc-c658f761bcd3",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Horror.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Horror.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Horror.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Horror.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Horror.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Horror.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Horror.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Horror",
        background: .image(UIImage(named: "Keyboard.Key.Horror.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Horror.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteHorror"
    )
    
    static var cuteRainbow: Theme = .init(
        id: "a4e42cc6-b35b-4490-aecf-c6e36d9d8b55",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rainbow.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rainbow.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rainbow",
        background: .image(UIImage(named: "Keyboard.Key.Rainbow.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rainbow.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRainbow"
    )
    
    static var cutePanda: Theme = .init(
        id: "a4e42cc6-b35b-4490-aecf-c6e36d9d8b55",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Panda.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Panda.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Panda.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Panda.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Panda.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Panda.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Panda.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Panda",
        background: .image(UIImage(named: "Keyboard.Key.Panda.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Panda.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePanda"
    )
    
    static var cuteCatGarden: Theme = .init(
        id: "65569958-90da-45ef-b925-96a95ab722d6",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatGarden.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatGarden.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CatGarden",
        background: .image(UIImage(named: "Keyboard.Key.CatGarden.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatGarden.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCatGarden"
    )
    
    static var cuteRabbitCute: Theme = .init(
        id: "e0f6b2fc-ed6e-42b7-a024-828c6d33473b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.RabbitCute.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.RabbitCute",
        background: .image(UIImage(named: "Keyboard.Key.RabbitCute.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.RabbitCute.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRabbitCute"
    )
    
    static var cuteZodiac: Theme = .init(
        id: "9dc0cf82-0479-47e0-ad84-9abed89a4647",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Zodiac.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        specialKey: "Keyboard.Key.Zodiac",
        background: .image(UIImage(named: "Keyboard.Key.Zodiac.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Zodiac.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteZodiac"
    )
    
    static var cuteNeonChill: Theme = .init(
        id: "1b18a9a4-731b-41cb-8a52-114077ec9538",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.NeonChill.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        specialKey: "Keyboard.Key.NeonChill",
        background: .image(UIImage(named: "Keyboard.Key.NeonChill.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.NeonChill.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteNeonChill"
    )
    
    static var cuteBeerRabbit: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Beer&Rabbit",
        background: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBeer&Rabbit"
    )
    
    static var cuteCapypara: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Capypara.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Capypara.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Capypara.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Capypara.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Capypara.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Capypara.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Capypara",
        background: .image(UIImage(named: "Keyboard.Key.Capypara.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Capypara.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCapypara"
    )
    
    static var cuteCatBlackWhite: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CatBlack&White",
        background: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Background")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCatBlack&White"
    )
}

struct CuteTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .cuteCatBlackWhite

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .cuteCatBlackWhite
            
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
