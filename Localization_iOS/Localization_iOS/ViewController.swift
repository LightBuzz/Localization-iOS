//
//  ViewController.swift
//  Localization_iOS
//
//  Created by Vangos Pterneas on 11/12/16.
//  Copyright © 2016 LightBuzz. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UIPickerViewDelegate, UIPickerViewDataSource {
    @IBOutlet weak var labelTitle: UILabel!
    @IBOutlet weak var labelMessage: UILabel!
    @IBOutlet weak var languagePicker: UIPickerView!
    
    var supportedLanguages: [String] = LocalizedResources.supportedLanguages
    var language: String = "en"

    override func viewDidLoad() {
        super.viewDidLoad()
        
        localize()
    }
    
    func localize() {
        LocalizedResources.setLanguage(language: language)
        
        labelTitle.text = LocalizedResources.getString(key: "title")
        labelMessage.text = LocalizedResources.getString(key: "message")
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return supportedLanguages.count
    }

    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        return supportedLanguages[row] as String
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        language = supportedLanguages[row]
        localize()
    }
}

