//
//  PhotoTheme.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 15/12/2023.
//

import Foundation
import SwiftUI

extension Theme {
    
    static var photoCloud: Theme = .init(
        id: "D84DB27E-1937-4414-901C-92DD404E00E4",
        button: .init(
            background: .color(Color.white.opacity(0.3)),
            foregroundColor: Color(hex: "#E43977"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoCloud")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoCloudPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoCloud",
        iconColor: Color(hex: "#E74880"),
        requiredPremium: false
    )
    
    static var photoPurpleGlitter: Theme = .init(
        id: "08CE51C5-2C48-4D16-86E4-B1473561A735",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoPurpleGlitter")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoPurpleGlitterPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoPurpleGlitter",
        iconColor: Color(hex: "#FFFFFF"),
        requiredPremium: false
    )
    
    static var photoDarkPurple: Theme = .init(
        id: "44173D04-49E2-4540-B010-732C6F83D539",
        button: .init(
            background: .color(Color.clear),
            foregroundColor: Color(hex: "EE82FF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "EE82FF"), size: 1)
        ),
        background: .image(UIImage(named: "photoDarkPurple")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoDarkPurplePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoDarkPurple",
        iconColor: Color(hex: "#E67EF7"),
        requiredPremium: false
    )
    
    static var photoPinkCream: Theme = .init(
        id: "FD495C1E-A549-4866-B930-5908571C24EC",
        button: .init(
            background: .color(Color(hex: "FF94AE").opacity(0.3)),
            foregroundColor: Color(hex: "DE0B57"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color.white, size: 1)
        ),
        background: .image(UIImage(named: "photoPinkCream")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoPinkCreamPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoPinkCream",
        iconColor: Color(hex: "#DE0B57"),
        requiredPremium: false
    )
    
    static var photoBlueGlitter: Theme = .init(
        id: "CA2255AA-4F39-40DD-9EEC-C22C94C96A71",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#0F73AC"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: Color(hex: "#5AB9EF"), size: 1)
        ),
        background: .image(UIImage(named: "photoBlueGlitter")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoBlueGlitterPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoBlueGlitter",
        iconColor: Color(hex: "#0F73AC")
    )
    
    static var photoGalaxy: Theme = .init(
        id: "E4B393C8-D371-4252-8746-A7FBF7DD34F9",
        button: .init(
            background: .color(Color(hex: "3C00BC").opacity(0.5)),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoGalaxy")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoGalaxyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoGalaxy",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoBlueNeon: Theme = .init(
        id: "D1873DED-ABBA-4C8E-9ADA-763817435BB2",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoBlueNeon")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoBlueNeonPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoBlueNeon",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoColor: Theme = .init(
        id: "16174B42-E522-4C16-A59F-B1F01571ADE6",
        button: .init(
            background: .color(.white.opacity(0.3)),
            foregroundColor: Color(hex: "882CE3"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoColor")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoColorPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoColor",
        iconColor: Color(hex: "#882CE3")
    )
    
    static var photoBokeh: Theme = .init(
        id: "AF0575F1-42DD-450E-A814-56F0C216D0CD",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoBokeh")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoBokehPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoBokeh",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoSkyfull: Theme = .init(
        id: "A19CB387-A3E8-4C83-8E20-2540179AAC77",
        button: .init(
            background: .color(.white.opacity(0.4)),
            foregroundColor: Color(hex: "008585"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoSkyfull")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoSkyfullPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoSkyfull",
        iconColor: Color(hex: "#008585")
    )
    
    static var photoDark: Theme = .init(
        id: "80D83416-40D6-41E9-8443-BBAAAD370166",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoDark")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoDarkPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoDark",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoWaterColor: Theme = .init(
        id: "1718B63E-AA57-4ED8-ADF3-04BEC5F74236",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoWaterColor")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoWaterColorPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoWaterColor",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoCool: Theme = .init(
        id: "1676BB63-E017-46B4-AB91-9E04850F7A6D",
        button: .init(
            background: .color(.black.opacity(0.2)),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoCool")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoCoolPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoCool",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoMountain: Theme = .init(
        id: "4954332F-654C-4625-B9B1-FBE3AAD42E9E",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoMountain")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoMountainPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoMountain",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoJungle: Theme = .init(
        id: "666F94D6-D206-47D2-A692-ACEDF8C7B1C3",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 8,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoJungle")?.jpegData(compressionQuality: 1) ?? Data()),
        
        preview: .image(UIImage(named: "photoJunglePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoJungle",
        iconColor: Color(hex: "#FFFFFF")
    )
}

extension Theme {
    static var photoBlueGalaxy: Theme = .init(
        id: "28FF5563-60D4-4615-9262-2C41FA7633C9",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color.white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: .white, size: 1)
        ),
        background: .image(UIImage(named: "photoBlueGalaxy")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        neonLinearAnimation: .radial([
            Color(hex: "#FFFFFF"),
            Color(hex: "#00F0FF")
        ]),
        preview: .image(UIImage(named: "photoBlueGalaxyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoBlueGalaxy",
        iconColor: Color(hex: "#80F7FF")
    )
    
    static var photoMajesticGalaxy: Theme = .init(
        id: "47A9D805-D400-4A0C-89D3-F7A3234D9AF1",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00F0FF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#4C3CFF"), size: 1)
        ),
        background: .image(UIImage(named: "photoMajesticGalaxy")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoMajesticGalaxyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoMajesticGalaxy",
        iconColor: Color(hex: "#00F0FF")
    )
    
    static var photoColorWaves: Theme = .init(
        id: "3D81027A-7128-4B50-8ED2-EDF475DD48B2",
        button: .init(
            background: .color(.white),
            foregroundColor: Color(hex: "#FF00D6"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 18,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoColorWaves")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            Color(hex: "#FF00D6"),
            Color(hex: "#00FFFF"),
            Color(hex: "#000AFF"),
            .clear
        ]),
        preview: .image(UIImage(named: "photoColorWavesPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoColorWaves",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoBlurBokeh: Theme = .init(
        id: "F5102FDC-2AA1-48F9-8B3B-2B691B787134",
        button: .init(
            background: .color(.black.opacity(0.6)),
            foregroundColor: Color(hex: "#80FE02"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 12,
            border: .init(color: Color(hex: "#FFC700"), size: 1)
        ),
        background: .image(UIImage(named: "photoBlurBokeh")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        preview: .image(UIImage(named: "photoBlurBokehPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoBlurBokeh",
        iconColor: Color(hex: "#80FE02")
    )
    
    static var photoPeculiarCircle: Theme = .init(
        id: "0F38EAD4-6EC5-4C49-AE12-E5A47A3802BF",
        button: .init(
            background: .color(.white.opacity(0.4)),
            foregroundColor: .white,
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 12,
            border: .init(color: .clear, size: 0)
        ),
        background: .image(UIImage(named: "photoPeculiarCircle")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .neon,
        inputCallout: .neon,
        neonPermission: .init(disableNeonButton: true),
        neonLinearAnimation: .radial([
            Color(hex: "#FFFFFF"),
            Color(hex: "#00F0FF"),
            Color(hex: "#000AFF"),
        ]),
        preview: .image(UIImage(named: "photoPeculiarCirclePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoPeculiarCircle",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoFantasticStrip: Theme = .init(
        id: "DB86F942-023C-4D9F-AE37-F2B02B065D22",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#000AFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 12,
            border: .init(color: .white.opacity(0.7), size: 1)
        ),
        background: .image(UIImage(named: "photoFantasticStrip")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoFantasticStripPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoFantasticStrip",
        iconColor: Color(hex: "#FFFFFF")
    )
    
    static var photoFriendlyLemur: Theme = .init(
        id: "B117322F-BA89-451F-B321-D4376720C182",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#FFD746"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#FFD746"), size: 1)
        ),
        background: .image(UIImage(named: "photoFriendlyLemur")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoFriendlyLemurPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoFriendlyLemur",
        iconColor: Color(hex: "#FFD746")
    )
    
    static var photoFunnyHorse: Theme = .init(
        id: "346BDB1D-C71E-4A36-9D0B-57ADDD147069",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00F0FF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#00F0FF"), size: 1)
        ),
        background: .image(UIImage(named: "photoFunnyHorse")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoFunnyHorsePreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoFunnyHorse",
        iconColor: Color(hex: "#00F0FF")
    )
    
    static var photoCuteCorgi: Theme = .init(
        id: "8A379A49-71A2-4B79-82B2-F0A116A3B847",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#FFD746"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#FF984C"), size: 1)
        ),
        background: .image(UIImage(named: "photoCuteCorgi")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoCuteCorgiPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoCuteCorgi",
        iconColor: Color(hex: "#FFD746")
    )
    
    static var photoCoolCat: Theme = .init(
        id: "78DF0732-8700-4CB0-880F-65C0DF0F17CF",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#00F0FF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#FF984C"), size: 1)
        ),
        background: .image(UIImage(named: "photoCoolCat")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoCoolCatPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoCoolCat",
        iconColor: Color(hex: "#00F0FF")
    )
    
    static var photoLoverDog: Theme = .init(
        id: "9D1D0816-136B-432C-81D9-146E96351F4B",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#729D39"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#729D39"), size: 1)
        ),
        background: .image(UIImage(named: "photoLoverDog")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoLoverDogPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoLoverDog",
        iconColor: Color(hex: "#729D39")
    )
    
    static var photoPuppy: Theme = .init(
        id: "BC4A4FFA-83D8-4D7E-89BE-63825494F364",
        button: .init(
            background: .color(.clear),
            foregroundColor: Color(hex: "#FFFFFF"),
            font: .custom("Inter-Medium", size: 18),
            cornerRadius: 10,
            border: .init(color: Color(hex: "#FFFFFF").opacity(0.5), size: 1)
        ),
        background: .image(UIImage(named: "photoPuppy")?.jpegData(compressionQuality: 1) ?? Data()),
        actionCallout: .bright,
        inputCallout: .bright,
        
        preview: .image(UIImage(named: "photoPuppyPreview")?.jpegData(compressionQuality: 1) ?? Data(), contentMode: .fit),
        name: "photoPuppy",
        iconColor: Color(hex: "#FFFFFF")
    )
}

//struct PhotoTheme_Previews: PreviewProvider {
//
//    struct Preview: View {
//        
//        let theme: Theme = .photoBlueGalaxy
//        
//        var controller: KeyboardInputViewController = {
//            let controller = KeyboardInputViewController.preview
//            controller.state.autocompleteContext.suggestions = [
//                //                .init(text: "Foo"),
//                //                .init(text: "Bar", isAutocorrect: true),
//                //                .init(text: "Baz")
//            ]
//            
//            let theme: Theme = .photoBlueGalaxy
//            
//            controller.services.styleProvider = CustomKeyStyleProvider(buttonStyle: theme.button, actionCallout: theme.actionCallout ?? .bright, inputCallout: theme.inputCallout ?? .bright, keyboardContext: controller.state.keyboardContext)
//            
//            controller.state.keyboardContext.setLocale(.kurdish_sorani_pc)
//            return controller
//        }()
//        
//        var emojiKeyboard: some View {
//            Button {
//                controller.state.keyboardContext.keyboardType = .alphabetic(.lowercased)
//            } label: {
//                Color.red
//                    .overlay(Text("Not implemented"))
//            }
//        }
//        
//        var keyboard: some View {
//            SystemKeyboard(
//                state: controller.state,
//                services: controller.services,
//                themeObject: [],
//                neonPermission: .init(
//                    disableNeonCharacter: true,
//                    disableNeonBorder: true,
//                    disableNeonButton: true
//                ),
//                buttonContent: { $0.view },
//                buttonView: { $0.view },
//                emojiKeyboard: { $0.view },
//                toolbar: { $0.view }
//            )
//        }
//        
//        var body: some View {
//            VStack(spacing: 10) {
//                Group {
//                    SystemKeyboard(
//                        state: controller.state,
//                        services: controller.services,
//                        themeObject: [],
//                        neonPermission: theme.neonPermission ?? .init(),
//                        neonLinearAnimation: theme.neonLinearAnimation ?? .none,
//                        animationValueObjects: theme.buttonNeonAnimation,
//                        duration: theme.durationAnimation ?? 0,
//                        buttonContent: { param in
//                            switch param.item.action {
//                            case .backspace:
//                                Image(systemName: "trash").foregroundColor(Color.red)
//                            default: param.view
//                            }
//                        },
//                        buttonView: { param in
//                            switch param.item.action {
//                            case .space:
//                                Text("This is a space bar replacement")
//                                    .frame(maxWidth: .infinity)
//                                    .multilineTextAlignment(.center)
//                            default: param.view
//                            }
//                        },
//                        emojiKeyboard: { _ in
//                            emojiKeyboard
//                        },
//                        toolbar: { $0.view }
//                    )
//                }
//                .background(theme.background?.backgroundView)
//                //                .background(controller.state.keyboardTheme.background.backgroundView)
//            }
//        }
//    }
//    
//    static var previews: some View {
//        Preview()
//    }
//}
