//
//  ConfigDataStorage.swift
//  NeonLedKeyboard
//
//  Created by MaxMobile Software on 29/12/2023.
//

import Foundation

struct ConfigDataStorage {
    
    static let shared: ConfigDataStorage = .init()
    
    private init() {
//        self.converToJson()
        /// just accept encode for id, name, imagePreview of theme
//        ThemeHandler.shared.saveThemeSection(themeSections)
        /// accept encode all variable of theme
        ThemeHandler.shared.createThemeFolder(themeSections)
    }
    
    var themeSections: [ThemeSection] = [
        .init(name: "Cute", themes: [.cuteZodiac, .cuteScreamboard, .cuteBloomBoard])
//        .init(name: "Cute", themes: [.cuteRainbowRabbit, .cuteFrogAlone, .cuteBWRabbit, .cuteDachshund, .cuteSillyParrot, .cuteLazyRabbit, .cuteShibaInu, .cutePawboard, .cuteCatlook, .cutePinkStar, .cuteGreenGrass, .cuteDusk, .cuteBloomBoard, .cuteCatGarden, .cutePurplePixel, .cuteBeneathTheLily, .cuteScreamboard, .cuteRainbowGarden, .cuteHungryPandas, .cuteKittyHaven, .cuteBunnehBard, .cuteZodiac, .cuteSereniKeys, .cuteBearRabbit, .cuteCapypara, .cuteCoolCat]),
//        .init(name: "Gradient", themes: [.gradientPink, .gradientGrass, .gradientSunny, .gradientPurple, .gradientSky, .gradientSea, .gradientGreen, .gradientPhotoRainbow, .gradientPhotoRomantic, .gradientPhotoUnicorn, .gradientPhotoGillter, .gradientPhotoColorfull, .gradientRiver, .gradientPopPoly, .gradientHologram, .gradientVividBlurred, .gradientVividColorfull, .gradientDarkUniverse, .gradientVortex, .gradientPolygon, .gradientAurora, .gradientYellowFruits, .gradientPurpleVivid, .gradientHexagonBlurred, .gradientCircleBlurred, .gradientCinema]),
//        .init(name: "Color", themes: [.colorLipPink, .colorLeaf, .colorCyan, .colorOcean, .colorPurple, .colorYellow, .colorLove, .colorWater, .colorGreen, .colorOrange, .colorTree, .colorHot]),
//        .init(name: "Photo", themes: [.photoCloud, .photoPurpleGlitter, .photoDarkPurple, .photoPinkCream, .photoBlueGlitter, .photoGalaxy, .photoBlueNeon, .photoColor, .photoBokeh, .photoSkyfull, .photoDark, .photoWaterColor, .photoCool, .photoMountain, .photoJungle, .photoBlueGalaxy, .photoMajesticGalaxy, .photoColorWaves, .photoBlurBokeh, .photoPeculiarCircle, .photoFantasticStrip, .photoFriendlyLemur, .photoFunnyHorse, .photoCuteCorgi, .photoCoolCat, .photoLoverDog, .photoPuppy]),
//        .init(name: "Neon", themes: [.neonCyber, .neonWaves, .neonCyberRoll, .neonColourPower, .neonWater, .neonPoly, .neonOcean, .neonDarkLeaf, .neonMysticJungle, .neonRoofNeon, .neonSummitNeon, .neonGlass, .neonLed, .neonLine, .neonVortexGalaxy, .neonSpread, .neonFutiristicNight, .neonFantasyNight, .neonMargicCircle, .neonMagicLight, .neonJungle, .neonPlasticBling, .neonGlossiness, .neonLustre, .neonBalloons, .neonTriangleNeon]),
//        .init(name: "Portrait", themes: [.portraitBossDog, .portraitLionKing, .portraitRobotic, .portraitNeonCat, .portraitNeonDog, .portraitLlama, .portraitNeonTiger, .portraitMonkeyFashion]),
//        .init(name: "Colorfull", themes: [.colorfullColorPaint, .colorfullTwirl, .colorfullUniverse, .colorfullLiquid, .colorfullCloud, .colorfullFlower, .colorfullLowPoly, .colorfullTropical, .colorfullWavesStrip, .colorfullColorCurve, .colorfullCubes, .colorfullMyosotis, .colorfullLavender, .colorfullHibicus, .colorfullMangosteen, .colorfullSky, .colorfullDarkNight, .colorfullMatcha, .colorfullTulips, .colorfullCentaurea, .colorfullIris, .colorfullRainbow]),
    ]
    
    var themeAuto: [ThemeAuto] = [
        .init(name: "Bright", theme: .bright, previewImage: ""),
        .init(name: "Dark", theme: .dark, previewImage: ""),
        .init(name: "Colortrip", theme: .colorTrip, previewImage: "")
    ]
    
}

struct ThemeSection: Identifiable, Codable {
    var id = UUID()
    var name: String
    var themes: [Theme]
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
//        try container.encode(self.id, forKey: .id)
        try container.encode(self.name, forKey: .name)
        try container.encode(self.themes, forKey: .themes)
    }
    
    enum CodingKeys: CodingKey {
        case id
        case name
        case themes
    }
    
    init(name: String, themes: [Theme]) {
        self.name = name
        self.themes = themes
    }
    
    init(from decoder: Decoder) throws {
        let container = try decoder.container(keyedBy: CodingKeys.self)
        self.id = UUID()
        self.name = try container.decode(String.self, forKey: .name)
        self.themes = try container.decode([Theme].self, forKey: .themes)
    }
}

struct ThemeAuto: Equatable {
    static func == (lhs: ThemeAuto, rhs: ThemeAuto) -> Bool {
        return lhs.name == rhs.name
    }
    
    var name: String
    var theme: Theme
    var previewImage: String
}
