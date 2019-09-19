//
//  ConfigureCell.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/30/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import Foundation

protocol ConfigurableCell {
    associatedtype DataType
    func configure(data: DataType)
    static var reuseIdentifier: String { get }
    static func getCellIdentifier() -> String
}

extension ConfigurableCell {
    static var reuseIdentifier: String { return String(describing: Self.self) }
    static func getCellIdentifier() -> String {
        return reuseIdentifier
    }
}
