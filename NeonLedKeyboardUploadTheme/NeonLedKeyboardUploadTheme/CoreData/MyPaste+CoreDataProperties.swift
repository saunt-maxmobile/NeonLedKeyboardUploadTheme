//
//  MyPaste+CoreDataProperties.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//
//

import Foundation
import CoreData


extension MyPaste {

    @nonobjc public class func fetchRequest() -> NSFetchRequest<MyPaste> {
        return NSFetchRequest<MyPaste>(entityName: "MyPaste")
    }

    @NSManaged public var date: Date?
    @NSManaged public var value: String?

}

extension MyPaste : Identifiable {

}
