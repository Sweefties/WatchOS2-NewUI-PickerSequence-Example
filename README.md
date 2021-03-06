![](https://img.shields.io/badge/build-pass-brightgreen.svg?style=flat-square)
![](https://img.shields.io/badge/platform-WatchOS2-ff69b4.svg?style=flat-square)
![](https://img.shields.io/badge/Require-XCode%208-lightgrey.svg?style=flat-square)


# WatchOS2-NewUI-PickerSequence-Example
WatchOS 2 Experiments - New UI Components - Picker Sequence

## Example

![](https://raw.githubusercontent.com/Sweefties/WatchOS2-NewUI-PickerSequence-Example/master/source/Apple_Watch_template-PickerSequence.jpg)

## Requirements

- >= XCode 8.0.
- >= Swift 3.

Tested on WatchOS2 Simulator.

## Important

this is the Xcode 8 / Swift 3 updated project.

## Usage

To run the example project, clone the repo.

### Extra Simple!

Configure your Storyboard :
  - Picker attributes inspector
  - set 'Style' attribute to 'Sequence'
  - connect your picker `pickerSequence` to your Interface Controller class
  - put code on ``willActivate()`` method.

```swift
let pickerItems: [WKPickerItem] = (0...100).map {
    let pickerItem = WKPickerItem()
    pickerItem.contentImage = WKImage(imageName: "single\($0)")
    return pickerItem
}
self.pickerSequence.setItems(pickerItems)
```

Build and Run!


Sequence images made with [Radial Chart Image Generator for Apple Watch.](http://hmaidasani.github.io/RadialChartImageGenerator/)
