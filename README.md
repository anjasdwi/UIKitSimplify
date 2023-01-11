# Swift-uikit-simplify-dsl
Simplify UIKit with by adopting the Domain Specific Language method

## UIKit Domain Specific Languange (DSL)

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
