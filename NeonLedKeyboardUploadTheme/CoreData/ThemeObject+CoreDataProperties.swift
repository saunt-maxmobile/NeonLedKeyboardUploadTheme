//
//  ThemeObject+CoreDataProperties.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//
//

import Foundation
import CoreData


extension ThemeObject {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<ThemeObject> {
        return NSFetchRequest<ThemeObject>(entityName: "ThemeObject")
    }

    @NSManaged public var background: String?
    @NSManaged public var date: Date?
    @NSManaged public var id: String?
    @NSManaged public var isSelect: Bool
    @NSManaged public var value: String?

}

extension ThemeObject : Identifiable {

}
