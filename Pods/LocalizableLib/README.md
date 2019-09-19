# LocalizationLib

- support RTL/LTR language
- support localization from StoryBoard
- support Image RTL from StoryBoard
- change Language without Restarting Application

## Installation

using pods

```bash
pod 'LocalizableLib'
```

## Usage

![ezgif com-video-to-gif](https://user-images.githubusercontent.com/11280137/50799717-e167d580-12e5-11e9-9770-c04e7f28be4a.gif)

```swift
import LocalizableLib

// for right to left language

MoLocalization.set(lang: "ar",
isRightToLeft: true,
forceReset: true,
startStoryBorad: "Main",
startViewController: "ViewController")

// for left to right language

MoLocalization.set(lang: "en",
isRightToLeft: false,
forceReset: true,
startStoryBorad: "Main",
startViewController: "ViewController")
```
## localizable programmatically

```swift

// localizable programmatically

lbl.text = "changeLanguage".localized()

```

## Change Font Global 

```swift
import LocalizableLib

if MoLocalization.currentAppleLanguage() == "ar" {
UITextField.appearance().substituteFontName = "Arial"
UILabel.appearance().substituteFontName = "Arial"
UILabel.appearance().substituteFontNameBold = "Arial-Bold"
UITextField.appearance().substituteFontNameBold = "Arial-Bold"
}
```
