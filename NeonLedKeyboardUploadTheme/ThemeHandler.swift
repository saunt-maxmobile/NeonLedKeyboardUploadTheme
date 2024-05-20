//
//  ThemeHandler.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 22/01/2024.
//

import Foundation
import UIKit
import FirebaseStorage
import Zip

struct ThemeHandler {
    static var shared: ThemeHandler = .init()
    
    private let THEME_SECTION_URL = FileManager.default.getLocalDirectory(to: .ThemeSection).appendingPathComponent(AppConfiguration.shared.themeSectionJson)
    private let THEME_DIRECTORY_URL: URL = FileManager.default.getLocalDirectory(to: .Theme)
    private let FIREBASE_STORAGE: Storage = Storage.storage()
    private let FILE_MANAGER: FileManager = FileManager.default
    
    private init() {}
    
    func saveThemeSection(_ themeSections: [ThemeSection]) {
        do {
            let encoder = JSONEncoder()
            encoder.outputFormatting = .prettyPrinted
            let jsonData = try encoder.encode(themeSections)
            
            try? jsonData.write(to: THEME_SECTION_URL)
            DispatchQueue.global(qos: .background).async {
                self.saveThemeSectionToStorage(jsonData)
            }
            print(THEME_SECTION_URL)
        } catch {
            print("Error encoding to JSON: \(error)")
        }
    }
    
    private func saveThemeSectionToStorage(_ data: Data) {
        let _themeSectionRef = FIREBASE_STORAGE.reference()
            .child("ThemeSection")
            .child(AppConfiguration.shared.themeSectionJson)
        
        _themeSectionRef.putData(data) { metadata, error in
            guard metadata != nil else {
                // Uh-oh, an error occurred!
                print("error")
                print(error)
                return
            }
            print("upload file success")
        }
    }
    
    func createThemeFolder(_ themeSections: [ThemeSection]) {
//        autoreleasepool {
            themeSections.forEach { themeSection in
                themeSection.themes.forEach { theme in
                    do {
                        /// create folder
                        let folderName = theme.name.convertCamelCaseToWords()
                        let _directoryPath = THEME_DIRECTORY_URL
                            .appendingPathComponent(folderName)
                        FILE_MANAGER.createDirectory(_directoryPath)
                        
                        try self.savePreviewImage(theme.imagePreview, directoryPath: _directoryPath)
                        try self.createZipFolder(folderName: folderName, theme: theme, directoryPath: _directoryPath)
                    } catch {
                        print(error)
                    }
                }
            }
            print(THEME_DIRECTORY_URL)
//        }
    }
    
    private func savePreviewImage(_ imagePreview: String, directoryPath: URL) throws {
        let _imagePreviewData = UIImage(named: imagePreview)?.jpegData(compressionQuality: 1.0)
        let _imagePath = directoryPath
            .appendingPathComponent(imagePreview+".jpeg")
        try _imagePreviewData?.write(to: _imagePath)
        self.saveThemeDataToStorage(folder: directoryPath.lastPathComponent, nameFile: imagePreview + ".jpeg", file: _imagePath)
    }
    
    private func saveThemeJson(_ theme: Theme, directoryPath: URL) throws {
        let _themeData = theme.toJsonData()
        let _themePath = directoryPath
            .appendingPathComponent("theme.json")
        try _themeData?.write(to: _themePath)
        self.saveThemeDataToStorage(folder: directoryPath.lastPathComponent, nameFile: "theme.json", file: _themePath)
    }
    
    private func createZipFolder(folderName: String, theme: Theme, directoryPath: URL) throws {
        /// create theme folder containt themeJson
        let _directoryFolderPath = directoryPath.appendingPathComponent(folderName)
        FILE_MANAGER.createDirectory(_directoryFolderPath)
        let _themeData = theme.toJsonData()
        let _themeJsonPath = _directoryFolderPath.appendingPathComponent("theme.json")
        try _themeData?.write(to: _themeJsonPath)
        
        /// add previewImage
        let _imagePreviewData = UIImage(named: theme.imagePreview)?.jpegData(compressionQuality: 1.0)
        let _imagePath = _directoryFolderPath.appendingPathComponent(theme.imagePreview+".jpeg")
        try _imagePreviewData?.write(to: _imagePath)
        
        /// zip folder
        let _zipFilePath = directoryPath.appendingPathComponent(folderName+".zip")
        try Zip.zipFiles(paths: [_directoryFolderPath], zipFilePath: _zipFilePath, password: nil, progress: nil)
        /// upload to storage
        self.saveThemeDataToStorage(folder: folderName, nameFile: folderName + ".zip", file: _zipFilePath)
        /// remove theme folder after zip
        try FILE_MANAGER.removeItem(at: _directoryFolderPath)
    }
    
    private func saveThemeDataToStorage(folder: String, nameFile: String, file: URL) {
        let _themeDataRef = FIREBASE_STORAGE.reference()
            .child("Theme")
            .child(folder)
            .child(nameFile)
        
        _themeDataRef.putFile(from: file) { metadata, error in
            guard metadata != nil else {
                // Uh-oh, an error occurred!
                print(error)
                return
            }
            print("save success: \(nameFile)")
        }
    }
}
