//
//  FontFromURL.swift
//
//  Created by Quinn Cattanach on 10/26/21.
//

import Foundation
#if os(macOS)
import Cocoa
typealias Font = NSFont
#elseif os(iOS)
import UIKit
typealias Font = UIFont
#endif

extension Font {
    class func createFontFromURL(_ absoluteURL: URL, size: CGFloat = 12.0) -> Font? {
        
        if let cfbr = CFBridgingRetain(absoluteURL) {
            
            let cfURL = cfbr as! CFURL
            
            if let dataProvider = CGDataProvider(url: cfURL),
               let cgFont = CGFont(dataProvider) {
                
                let font: Font = CTFontCreateWithGraphicsFont(cgFont, 24.0, nil, nil)
                return font
            }
        }
        
        return nil
    }
}

extension CGFont {
    class func createFontFromURL(_ absoluteURL: URL, size: CGFloat = 12.0) -> CGFont? {
        
        if let cfbr = CFBridgingRetain(absoluteURL) {
            
            let cfURL = cfbr as! CFURL
            
            if let dataProvider = CGDataProvider(url: cfURL),
               let cgFont = CGFont(dataProvider) {
                return cgFont
            }
        }
        
        return nil
    }
}
