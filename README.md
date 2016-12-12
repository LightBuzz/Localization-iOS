# Explicit Localization in iOS
Learn how to localize your iOS (iPhone/iPad) app by selecting the language programmatically.

![Localization iOS by LightBuzz](http://lightbuzz.com/wp-content/uploads/2016/12/localization-ios.gif)

## Features

### Get the languages supported by the current app
    var supportedLanguages = LocalizedResources.supportedLanguages

### Set the language
    LocalizedResources.setLanguage(language: "English")

### Localize content
    label.text = LocalizedResources.getString(key: "label_text")
    picture.image = UIImage(named: LocalizedResources.getString(key: "image_name"))

## Contributors
* [Vangos Pterneas](http://pterneas.com)
* [George Karakatsiotis](http://lightbuzz.com)

## License
Licensed under the [MIT License](https://github.com/LightBuzz/Localization-iOS/blob/master/LICENSE).
