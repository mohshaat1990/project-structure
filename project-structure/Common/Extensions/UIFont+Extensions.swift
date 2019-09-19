//
//  FontExtension.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/27/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import UIKit

extension UIFont {
    class func appRegularFontWith( size:CGFloat ) -> UIFont {
        return  UIFont(name: FontNames.Rpt.RptRegular, size: size)!
    }
    
    class func appBoldFontWith( size:CGFloat ) -> UIFont {
        return  UIFont(name: FontNames.Rpt.RptBold, size: size)!
    }
}
