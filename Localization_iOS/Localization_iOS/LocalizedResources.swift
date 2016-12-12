//
//  LocalizedResources.swift
//  Localization_iOS
//
//  Created by Vangos Pterneas on 12/12/16.
//  Copyright © 2016 LightBuzz. All rights reserved.
//

import Foundation

class LocalizedResources {
    static let supportedLanguages = Bundle.main.localizations
    static var activeLanguage: String = "en"
    static var bundle: Bundle!
    
    class func setLanguage(language: String) {
        activeLanguage = language
        bundle = Bundle.init(path: Bundle.main.path(forResource: activeLanguage as String, ofType: "lproj")!)
    }
    
    class func getString(key: String) -> String? {
        return bundle.localizedString(forKey: key as String, value: "", table: nil)
    }
    
    class func getString(key: String, comment: String) -> String? {
        return bundle.localizedString(forKey: key as String, value: comment, table: nil)
    }
}
