//
//  FileManager+Extension.swift
//  NeonLedKeyboardUploadTheme
//
//  Created by MaxMobile Software on 22/01/2024.
//

import Foundation

extension FileManager {
    
    static var documentsDirectoryURL: URL {
        return `default`.urls(for: .documentDirectory, in: .userDomainMask)[0]
    }
    
    enum LocalDirectories: String {
        case Template = "Template"
        case Favorite = "Favorite"
        case Font = "Font"
        case JSON = "JSON"
        case MyStory = "MyStory"
        case Sticker = "Sticker"
        case TemplateJsonEdit = "Template Json Edit"
        case Theme = "Theme"
        case ThemeSection = "ThemeSection"
    }
    
    func getLocalDirectory(to directory: LocalDirectories) -> URL {
        var _documentURL: URL = FileManager.documentsDirectoryURL
        let _directoryName: String = directory.rawValue
        _documentURL = _documentURL.appendingPathComponent(_directoryName, conformingTo: .directory)
        self.createDirectory(_documentURL)
        return _documentURL
    }
    
    func createDirectory(_ url: URL) {
        do {
            try self.createDirectory(at: url, withIntermediateDirectories: true)
        } catch {
            fatalError("#### Failed to create new Directory ####")
        }
    }
    
    func deleteDirectory(_ directory: LocalDirectories) {
        do {
            let _directoryURL: URL = self.getLocalDirectory(to: directory)
            guard self.fileExists(atPath: _directoryURL.path) else { return }
            try self.removeItem(at: _directoryURL)
        } catch {
            fatalError("#### Failed to delete exists Directory ####")
        }
    }
    
    func decodeJSONFromFile<T: Decodable>(url: URL, type: T.Type) -> T? {
        do {
            let data = try Data(contentsOf: url)
            let decoder = JSONDecoder()
            let decodedObject = try decoder.decode(type, from: data)
            return decodedObject
        } catch {
            print("Error decoding JSON: \(error)")
            return nil
        }
    }
}

extension FileManager {
    
    /// Use for template zipURL
    func getTemplateLocalPath(from url: URL) -> URL {
        let _templateDirectory: URL = self.getLocalDirectory(to: .Template)
        let _lastpathComponent: String = url.lastPathComponent
        let _destinationURL: URL = _templateDirectory.appendingPathComponent(_lastpathComponent)
        return _destinationURL
    }
    
    /// Use for template name
    func getTemplateLocalPath(from string: String) -> URL {
        let _templateDirectory: URL = self.getLocalDirectory(to: .Template)
        return _templateDirectory
    }
    
    /// Use for template name
    func getTemplateLocalPath(from string: String, inFolder: String) -> URL {
        let _templateDirectory: URL = self.getCollectionDirectory(collection: inFolder)
        let _destinationURL: URL = _templateDirectory.appendingPathComponent(string)
        
        return _destinationURL
    }
    
    func getTemplateEditPath(from string: String,inFolder: String) -> URL {
        let _templateDirectory: URL = self.getCollectionEditDirectory(collection: inFolder)
        let _destinationURL: URL = _templateDirectory.appendingPathComponent(string)
        
        return _destinationURL
    }
    
    func getCollectionEditDirectory(collection: String) -> URL {
        let templateDir = self.getLocalDirectory(to: .TemplateJsonEdit).appendingPathComponent(collection)
        do {
            try self.createDirectory(at: templateDir, withIntermediateDirectories: true)
        } catch{
            
        }
        return templateDir
    }
    
    func getCollectionDirectory(collection: String) -> URL {
        let templateDir = self.getLocalDirectory(to: .Template).appendingPathComponent(collection)
        do {
            try self.createDirectory(at: templateDir, withIntermediateDirectories: true)
        } catch{
            
        }
        return templateDir
    }
}
