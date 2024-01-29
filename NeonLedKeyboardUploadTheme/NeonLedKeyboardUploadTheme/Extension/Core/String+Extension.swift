//
//  String+Extension.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 22/01/2024.
//

import Foundation
import SwiftUI

extension String {
    func convertCamelCaseToWords() -> String {
        var result = ""
        
        for character in self {
            if character.isUppercase {
                result.append(" ")
            }
            result.append(character)
        }
        
        result = result.capitalized.trimmingCharacters(in: .whitespaces)
        
        return result
    }
    
    func getImagePreviewName() -> String {
        return self.trimmingCharacters(in: .whitespaces).lowercaseFirstCharacter() + "Preview.jpeg"
    }
    
    private func lowercaseFirstCharacter() -> String {
        guard let firstCharacter = self.first else {
            // Return the original string if it's empty
            return self
        }
        
        let restOfCharacters = self.suffix(from: self.index(after: self.startIndex))
        let lowercasedFirstCharacter = String(firstCharacter).lowercased()
        
        return lowercasedFirstCharacter + restOfCharacters
    }
}

