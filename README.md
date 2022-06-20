# FontFromURL
Extensions for NSFont, UIFont, and CGFont with new class method that creates a new font object from a file URL. 
Contents: a swift file for iOS and macOS applications.
New: Support for SwiftUI.

SwiftUI
-----
```swift
let karasumaBold: Font = .init("KarasumaGothic-Bold", fileExtension: "otf", bundle: .main, size: 12.0)!
```

Class Methods
-----
```swift

NSFont.createFontFromURL(_:size:)
UIFont.createFontFromURL(_:size:)
CGFont.createFontFromURL(_:size:)

```
