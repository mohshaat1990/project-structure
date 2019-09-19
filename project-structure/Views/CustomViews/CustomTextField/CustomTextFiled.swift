//
//  CustomTextFiled.swift
//  Zumra
//
//  Created by Mohamed Shaat on 3/13/18.
//  Copyright © 2018 10degree. All rights reserved.
//

import UIKit
import TweeTextField
import LocalizableLib
class CustomTextFiled: UIView {
    
    @IBOutlet weak var textFiled: TweeAttributedTextField!
    let nibName = "CustomTextField"
    var contentView: UIView?
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        guard let view = loadViewFromNib() else { return }
        view.frame = self.bounds
        self.addSubview(view)
        contentView = view
      

    }
   public var errorMessage : String = "" {
       didSet {
        self.textFiled.showInfo(errorMessage, animated: true)
    }
    }
    
    @IBInspectable
    public var title : String = "" {
        didSet {
            self.textFiled.text = self.title
        }
    }
    
    @IBInspectable
    public var placeHolder : String = "" {
        didSet {
            self.textFiled.tweePlaceholder = self.placeHolder
            if MoLocalization.currentAppleLanguage() == "en" {
                self.textFiled.placeholderLabel.textAlignment = .left
                self.textFiled.textAlignment = .left
            }else {
                self.textFiled.placeholderLabel.textAlignment = .right
                self.textFiled.textAlignment = .right
            }
            self.textFiled.tweePlaceholder = localizeText.localized()
        }
    }
    
    @IBInspectable
    public var localizeText : String = "" {
        didSet {
            if MoLocalization.currentAppleLanguage() == "en" {
                self.textFiled.placeholderLabel.textAlignment = .left
                self.textFiled.textAlignment = .left
            }else {
                self.textFiled.placeholderLabel.textAlignment = .right
                self.textFiled.textAlignment = .right
            }
            self.textFiled.tweePlaceholder = localizeText.localized()
        }
    }
    
    
    @IBInspectable
    var keyboardType = UIKeyboardType.default.rawValue {
        didSet {
            self.textFiled.keyboardType = UIKeyboardType(rawValue: keyboardType)!
        }
    }
    
    @IBInspectable
    var isSecure :Bool = false {
        didSet {
            self.textFiled.isSecureTextEntry = self.isSecure
        }
    }
    @IBInspectable
    var textColor :UIColor = #colorLiteral(red: 0.8039215803, green: 0.8039215803, blue: 0.8039215803, alpha: 1) {
        didSet {
            self.textFiled.textColor = textColor
        }
    }
   
    
    func loadViewFromNib() -> UIView? {
        let bundle = Bundle(for: type(of: self))
        let nib = UINib(nibName: nibName, bundle: bundle)
        return nib.instantiate(withOwner: self, options: nil).first as? UIView
    }
}


