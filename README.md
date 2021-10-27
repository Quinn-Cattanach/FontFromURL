# FontFromURL
Extensions for NSFont, UIFont, and CGFont with new class method that creates a new font object from a file URL. 
Contents: a swift file for iOS and macOS applications.

-----
#### Class Methods:
```swift

NSFont.createFontFromURL(_:size:)
UIFont.createFontFromURL(_:size:)
CGFont.createFontFromURL(_:size:)

```

-----
#### Parameters:

`absoluteURL: URL`
The URL used to reference the font file.

`size: CGFloat`
The font size of the returned font object. Default value is `12.0`
