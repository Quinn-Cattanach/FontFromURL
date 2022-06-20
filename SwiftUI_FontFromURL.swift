import SwiftUI
#if os(macOS)
import Cocoa
typealias PlatformFont = NSFont
#elseif os(iOS)
import UIKit
typealias PlatformFont = UIFont
#endif

extension Font {
    init?(_ absoluteURL: URL, size: CGFloat = 12.0) {
        if let cfbr = CFBridgingRetain(absoluteURL) {
            
            let cfURL = cfbr as! CFURL
            
            if let dataProvider = CGDataProvider(url: cfURL),
               let cgFont = CGFont(dataProvider) {
                let font: PlatformFont = CTFontCreateWithGraphicsFont(cgFont, 24.0, nil, nil)
                self = Font(font as CTFont)
            }
        }
        return nil
    }
    init?(_ fontName: String,
            fileExtension: String? = nil,
            bundle: Bundle = Bundle.main,
            size: CGFloat = 12.0) {
        if let url = bundle.url(forResource: fontName, 
                                     withExtension: fileExtension),
                                     let font = Self.init(url, size: size) {
            self = font
        } else {
            return nil
        }
    }
}
