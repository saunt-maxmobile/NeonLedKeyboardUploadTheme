//
//  KeyboardLocale+Extension.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation

extension KeyboardLocale {
    
    var shiftButton: Bool {
        switch self {
        case .english, .english_gb, .english_us, .estonian, .filipino, .irish, .croatian, .indonesian, .italian, .swahili, .latvian, .lithuanian, .hungarian, .dutch, .uzbek, .polish, .portuguese, .portuguese_brazil, .romanian, .albanian, .slovenian, .serbian_latin, .greek, .malay, .kurdish_sorani, .georgian, .catalan, .danish, .german, .german_austria, .german_switzerland, .spanish, .french, .french_belgium, .french_switzerland, .faroese, .finnish, .maltese, .dutch_belgium, .norwegian, .turkish, .swedish, .icelandic, .czech, .hawaiian, .belarusian, .bulgarian, .macedonian, .mongolian, .russian, .serbian, .ukrainian, /*.kazakh, .armenian,*/ .slovak: return true
        case .arabic, .kurdish_sorani_pc, .cherokee, .persian, .kurdish_sorani_arabic: return false
        case .hebrew: return false
//        case .vietname: return true
        case .korea, .china, .assamese: return true
        }
    }
    
    var marginBottom: Bool {
        switch self {
        case .english, .english_gb, .english_us, .estonian, .filipino, .irish, .croatian, .indonesian, .italian, .swahili, .latvian, .lithuanian, .hungarian, .dutch, .uzbek, .polish, .portuguese, .portuguese_brazil, .romanian, .albanian, .slovenian, .serbian_latin, .greek, .malay, .kurdish_sorani, .georgian, .catalan, .danish, .german, .german_austria, .german_switzerland, .spanish, .french, .french_belgium, .french_switzerland, .finnish,  .dutch_belgium, .norwegian, .turkish, .swedish, .kurdish_sorani_pc, .cherokee:
            return true
        case.arabic, .icelandic, .czech, .hawaiian, .belarusian, .bulgarian, .macedonian, .mongolian, .russian, .serbian, .ukrainian, /*.kazakh, .armenian,*/ .persian, .kurdish_sorani_arabic, .slovak, .faroese, .maltese:
            return false
        case .hebrew: return false
//        case .vietname: return true
        case .korea, .china: return true
        case .assamese: return false
        }
    }
}
