//
//  ExtensionFont.swift
//  Created by Mohamed Shaat on 7/27/19.
//

import UIKit

extension UILabel {
   @objc public var substituteFontName : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") == nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
   @objc public var substituteFontNameBold : String {
        get { return self.font.fontName }
        set {
            if self.font.fontName.range(of:"-Bd") != nil {
                self.font = UIFont(name: newValue, size: self.font.pointSize)
            }
        }
    }
}
extension UITextField {
   @objc public  var substituteFontName : String {
        get { return self.font!.fontName }
        set { self.font = UIFont(name: newValue, size: (self.font?.pointSize)!) }
    }
    @objc public var substituteFontNameBold : String {
        get { return self.font!.fontName }
        set {
            if self.font?.fontName.range(of:"-Bd") != nil {
                self.font = UIFont(name: newValue, size: (self.font?.pointSize)!)
            }
        }
    }
}


