![iOS](https://img.shields.io/badge/iOS-ffffff?style=for-the-badge&labelColor=black&logo=ios&logoColor=white)
![Swift](https://img.shields.io/badge/Swift-F05032?style=for-the-badge&labelColor=black&logo=swift&logoColor=F05032)

# UIKitSimplify
UIKitSimplify is Simplify UIKit by adopting the Domain Specific Language (DSL) method like SwiftUI.

## Contents
- [UIKitSimplify](#uikitsimplify)
  - [Contents](#contents)
  - [Requirements](#requirements)
  - [Instalation](#instalation)
  - [Usage](#usage)
    - [Create Object](#create-object)
        - [Trailing syntax](#trailing-syntax)
        - [Shorthand syntax](#shorthand-syntax)
    - [Arrange view using ResultBuilder](#arrange-view-using-resultbuilder)
        - [Using initialize method](#using-initialize-method)
        - [Using existing function](#using-existing-function)
    - [UIStackView DSL](#uistackview-dsl)
  - [Licence](#licence)
  - [Contact](#contact)

## Requirements
- iOS 12.0+
- Xcode 10.0+
- Swift 5.0+

## Instalation
UIKitSimplify support for `Cocoapod` instalation, you can use this library by adding to your `PodFile`:
```
source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '12.0'
use_frameworks!

target '<Your Target Name>' do
    pod 'UIKitSimplify', '~> 0.1.0'
end
```

## Usage

### Create Object
`Withable` custom protocol to help you to create an object and config their own properties easily. Just using `with` function, and you can access all object properties. e.g.
##### Trailing syntax
Example for using *trailing closure syntax*
```swift
let mainvView = UIView().with { view
    view.backgroundColor = .gray
    view.layer.cornerRadius = 4
}
```
##### Shorthand syntax
Example for using *shorthand closure syntax*
```swift
let mainView = UIView().with {
    $0.backgroundColor = .gray
    $0.layer.cornerRadius = 4
}
```
### Arrange view using ResultBuilder
ResultBuilder with name `ViewBuilder` for DSL method to create and arrange views like swiftUI for `UIStackView` and `UIView`. You can init the view and arrange what subviews you want to add directly. e.g.
##### Using initialize method
Example for using init method
```swift
let mainSV = UIStackView {
        UIlabel()
        UILabel().with {
            $0.backgroundColor = .gray
            $0.layer.cornerRadius = 4
        }
    }
```
##### Using existing function
All Object that inherite to `UIStackView` can use `addArrangedSubviews` with ViewBuilder method. e.g.
```swift
let mainSV = UIStackView()
    .addArrangedSubviews {
        UIlabel()
    }
```
Meanwhile, `UIView` can use `addSubViews` with ViewBuilder method. e.g.
```swift
let mainSV = UIView()
    .addSubViews {
        UIlabel()
    }
```

### UIStackView DSL
Added some function for UIStackview DSL Using Withable custom protocol.
```swift
let mainSV = UIStackView()
    .axis(.vertical)
    .distribution(.fill)
    .spacing(4)
    .views(
        anotherView1,
        anotherView2,
        anotherView3
    )
    .setCustomSpacing(
        (8, after: anotherView1),
        (12, after: anotherView2)
    )
```
Combine Withable and ViewBuilder method
```swift
let mainSV = UIStackView {
        anotherView1
        anotherView2
        anotherView3
    }
    .axis(.vertical)
    .distribution(.fill)
    .spacing(4)
    .setCustomSpacing(
        (8, after: anotherView1),
        (12, after: anotherView2)
    )
```

## Licence
Distributed under the MIT License. See `LICENSE.txt` for more information.

## Contact
Anjas Dwi - <a href="https://www.linkedin.com/in/anjas-dwi/">LinkedIn</a> - anjasdwi.id@gmail.com <br/>
Project Link: <a href="https://github.com/anjasdwi/UIKitSimplify">https://github.com/anjasdwi/UIKitSimplify</a> <br/>
Cocoapod Link: <a href="https://cocoapods.org/pods/UIKitSimplify">https://cocoapods.org/pods/UIKitSimplify</a>
