//
//  GradientPhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    static var cuteRainbowRabbit: Theme = .init(
        id: "43b753fa-2559-4058-b6f6-a55f4a1b9e38",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "655757"),
            font: .custom("HachiMaruPop-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rainbow1.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rainbow1",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Rainbow1.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rainbow1.PreviewKeyboard")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRainbowRabbit"
    )
    
    static var cuteFrogAlone: Theme = .init(
        id: "a059c95b-c613-4e0c-9415-d3411676f80b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Frog.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "FC9393"),
            font: .custom("HachiMaruPop-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Frog.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Frog.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Frog.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Frog.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Frog.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Frog.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Frog",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Frog.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Frog.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteFrogAlone"
    )
    
    static var cuteBWRabbit: Theme = .init(
        id: "6885dab9-1803-4848-a16f-b3091faf1896",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rabbit.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("EncodeSansSemiExpanded-Medium", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rabbit.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rabbit",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rabbit.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBWRabbit"
    )
    
    static var cuteDachshund: Theme = .init(
        id: "a9da740c-fbf2-47a6-9753-921f4d3e8e65",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Dog.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "341F0C"),
            font: .custom("Schoolbell-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Dog.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Dog.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Dog.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Dog.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Dog",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Dog.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Dog.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteDachshund"
    )
    
    static var cuteSillyParrot: Theme = .init(
        id: "e0490df8-61fa-41b3-aeb6-eab7741f54c3",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Parrot.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
//            font: .custom("IndieFlower-Regular", size: 18)
            font: .custom("Schoolbell-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Parrot.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Parrot.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Parrot.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Parrot.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Parrot",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Parrot.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Parrot.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteSillyParrot"
    )
    
    static var cuteLazyRabbit: Theme = .init(
        id: "9635be73-17e0-4072-a6f3-eebaaa3c567f",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Parrot.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .custom("ArchitectsDaughter-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rabbit2.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rabbit2",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .color(.white),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rabbit2.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteLazyRabbit"
    )
    
    static var cuteShibaInu: Theme = .init(
        id: "abbe272d-4e91-4db5-a920-f734f19a2db7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.ShibaInu.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "403131"),
            font: .custom("RoadRage", size: 15)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Shift"), contentMode: .fit),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Backspace"), contentMode: .fit),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.KeyboardType"), contentMode: .fit),
        spaceButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Space"), contentMode: .fit),
        primaryButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.ShibaInu.Normal"), contentMode: .fit),
        specialKey: "Keyboard.Key.ShibaInu",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.ShibaInu.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.ShibaInu.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteShibaInu"
    )
    
    static var cutePawboard: Theme = .init(
        id: "662fc3af-c570-4c83-a4e8-4acc47aceed8",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("AveriaSansLibre-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Space"), contentMode: .fit),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CuteAnimal",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.CuteAnimal.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CuteAnimal.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePawboard"
    )
    
    static var cuteCatlook: Theme = .init(
        id: "63b2d86d-c13b-4a10-828d-7c5a29cdf9e2",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatLook.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("SansitaSwashed-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatLook.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatLook.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatLook.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CatLook.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CatLook",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.CatLook.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatLook.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCatlook"
    )
    
    static var cutePinkStar: Theme = .init(
        id: "dd98d0e0-093f-4ac6-8eb8-551fb1e70d1b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.PinkStar.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("Mali-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.PinkStar.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.PinkStar",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.PinkStar.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.PinkStar.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePinkStar"
    )
    
    static var cuteGreenGrass: Theme = .init(
        id: "b252153c-331f-4d09-93e6-65d7f9678d0a",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.GreenGrass.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("Sansation_Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.GreenGrass.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.GreenGrass",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.GreenGrass.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.GreenGrass.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteGreenGrass"
    )
    
    static var cuteDusk: Theme = .init(
        id: "6907ff8d-5b9f-490f-ad8e-f1573b5354de",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Dusk.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("PlayfairDisplay-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Dusk.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Dusk.Func"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Dusk.Func"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Dusk.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Dusk.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Dusk.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Dusk",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Dusk.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Dusk.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteDusk"
    )
    
    static var cuteBloomBoard: Theme = .init(
        id: "94825414-3414-420c-a4ad-88d458c58a7b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Spring.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#E16241"),
            font: .custom("fontspring-demo-ceraroundpro-regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Spring.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Spring.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Spring.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Spring.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Spring.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Spring.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Spring",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Spring.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Spring.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBloomBoard"
    )
    
    static var cuteCatGarden: Theme = .init(
        id: "8650bd8f-09b6-4613-8ad7-2ba8b3c8e62d",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Cat.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .body
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Cat.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Cat.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Cat.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Cat.Space"), contentMode: .fit),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Cat.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Cat.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Cat",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Cat.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Cat.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCatGarden"
    )
    
    static var cutePurplePixel: Theme = .init(
        id: "4aa89fd4-c67e-4679-a5d8-542070b34835",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Pixal.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .custom("Minecraft", size: 18)
        ),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Pixal.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Pixal.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Pixal",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Pixal.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Pixal.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cutePurplePixel"
    )
    
    static var cuteBeneathTheLily: Theme = .init(
        id: "dd9c9a73-9f7b-47f1-ad19-ba1eee480e77",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.FrogKey.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#E97CAB"),
            font: .custom("AveriaSansLibre-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.FrogKey.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.FrogKey.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.FrogKey",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.FrogKey.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.FrogKey.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBeneathTheLily"
    )
    
    static var cuteScreamboard: Theme = .init(
        id: "563c912c-7799-4a57-a3fc-c658f761bcd3",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Horror.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.black,
            font: .custom("Creepster-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Horror.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Horror.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Horror.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Horror.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Horror.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Horror.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Horror",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Horror.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "cuteScreamboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteScreamboard"
    )
    
    static var cuteRainbowGarden: Theme = .init(
        id: "01HY2ZX8CEJY3E69Z01B2YV1TP",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Rainbow.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#FF706C"),
            font: .custom("GamjaFlower-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Rainbow.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Rainbow.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Rainbow",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Rainbow.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Rainbow.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteRainbowGarden"
    )
    
    static var cuteHungryPandas: Theme = .init(
        id: "a4e42cc6-b35b-4490-aecf-c6e36d9d8b55",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Panda.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#343345"),
            font: .custom("Nunito-Medium", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Panda.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Panda.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Panda.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Panda.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Panda.Primary"), contentMode: .fit),
        emojiButton: .image(UIImage(named: "Keyboard.Key.Panda.Normal"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Panda",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Panda.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Panda.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteHungryPandas"
    )
    
    static var cuteKittyHaven: Theme = .init(
        id: "65569958-90da-45ef-b925-96a95ab722d6",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatGarden.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#FEBE33"),
            font: .custom("BalsamiqSans-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatGarden.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.CatGarden.Emoji"), contentMode: .fit),
        specialKey: "Keyboard.Key.CatGarden",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.CatGarden.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatGarden.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteKittyHaven"
    )
    
    static var cuteBunnehBard: Theme = .init(
        id: "e0f6b2fc-ed6e-42b7-a024-828c6d33473b",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.RabbitCute.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#6E3C32"),
            font: .custom("BalsamiqSans-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Primary"), contentMode: .stretch),
        emojiButton: .image(UIImage(named: "Keyboard.Key.RabbitCute.Emoji"), contentMode: .stretch),
        specialKey: "Keyboard.Key.RabbitCute",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.RabbitCute.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.RabbitCute.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBunnehBard"
    )
    
    static var cuteZodiac: Theme = .init(
        id: "9dc0cf82-0479-47e0-ad84-9abed89a4647",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Zodiac.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: .white,
            font: .custom("EncodeSansSemiExpanded-Medium", size: 18)
        ),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Zodiac.Primary"), contentMode: .fit),
        specialKey: "Keyboard.Key.Zodiac",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Zodiac.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Zodiac.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteZodiac"
    )
    
    static var cuteSereniKeys: Theme = .init(
        id: "1b18a9a4-731b-41cb-8a52-114077ec9538",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.NeonChill.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color.white,
            font: .custom("EncodeSansSemiExpanded-Medium", size: 18)
        ),
        primaryButton: .image(UIImage(named: "Keyboard.Key.NeonChill.Primary"), contentMode: .fit),
        specialKey: "Keyboard.Key.NeonChill",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.NeonChill.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.NeonChill.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteSereniKeys"
    )
    
    static var cuteBearRabbit: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#D5796C"),
            font: .custom("TwinkleStar-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.Beer&Rabbit",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Beer&Rabbit.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteBearRabbit"
    )
    
    static var cuteCapypara: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.Capypara.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#AD691D"),
            font: .custom("Gaegu-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.Capypara.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.Capypara.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.Capypara.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.Capypara.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.Capypara.Primary"), contentMode: .fit),
        specialKey: "Keyboard.Key.Capypara",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.Capypara.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.Capypara.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCapypara"
    )
    
    static var cuteCoolCat: Theme = .init(
        id: "5890bfbc-9205-4113-bea1-004054f7fde7",
        button: .init(
            background: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Normal")?.pngData() ?? Data(), contentMode: .stretch),
            foregroundColor: Color(hex: "#E2E238"),
            font: .custom("ElsieSwashCaps-Regular", size: 18)
        ),
        shiftButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Shift"), contentMode: .stretch),
        backspaceButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Backspace"), contentMode: .stretch),
        keyboardTypeButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.KeyboardType"), contentMode: .stretch),
        spaceButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Space"), contentMode: .stretch),
        primaryButton: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Primary"), contentMode: .stretch),
        specialKey: "Keyboard.Key.CatBlack&White",
        showSpaceTitle: false,
        showPrimaryTitle: false,
        background: .image(UIImage(named: "Keyboard.Key.CatBlack&White.Background")?.jpegData(compressionQuality: 0.1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "Keyboard.Key.CatBlack&White.KeyboardPreview")?.jpegData(compressionQuality: 0.1) ?? Data(), contentMode: .fit),
        name: "cuteCoolCat"
    )
}

struct CuteTheme_Previews: PreviewProvider {

    struct Preview: View {
        
        var theme: Theme = .cutePurplePixel

        var controller: KeyboardInputViewController = {
            let controller = KeyboardInputViewController.preview
            controller.state.autocompleteContext.suggestions = [
//                .init(text: "Foo"),
//                .init(text: "Bar", isAutocorrect: true),
//                .init(text: "Baz")
            ]
            
            let theme: Theme = .cutePurplePixel
            
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
                
                theme.preview?.backgroundView
            }
        }
    }

    static var previews: some View {
        Preview()
    }
}
