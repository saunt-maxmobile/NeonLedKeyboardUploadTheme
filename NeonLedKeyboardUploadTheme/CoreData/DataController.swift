//
//  DataController.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 18/01/2024.
//

import Foundation
import CoreData

class DataController: ObservableObject {
    
    static let shared: DataController = .init()
    
    let container = NSPersistentContainer(name: "Entity")
    
    private init() {
        
//        let url = URL.storeURL(for: Constant.APP_GROUP, databaseName: "Entity")
//        let storeDescription = NSPersistentStoreDescription(url: url)
//        container.persistentStoreDescriptions = [storeDescription]
        
        container.loadPersistentStores { description, error in
            if let error = error {
                print("Core Data failed to load: \(error.localizedDescription)")
            }
        }
    }
}

public extension URL {

    /// Returns a URL for the given app group and database pointing to the sqlite database.
    static func storeURL(for appGroup: String, databaseName: String) -> URL {
        guard let fileContainer = FileManager.default.containerURL(forSecurityApplicationGroupIdentifier: appGroup) else {
            fatalError("Shared file container could not be created.")
        }

        return fileContainer.appendingPathComponent("\(databaseName).sqlite")
    }
}
