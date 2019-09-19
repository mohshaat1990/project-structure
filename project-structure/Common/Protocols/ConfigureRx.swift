//
//  ConfigureViewControllerRx.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/31/19.
//  Copyright © 2019 shaat. All rights reserved.
//


import UIKit

protocol ConfigureRx {
    func bindViews()
}

extension ConfigureRx {
    func  observeErrors() {}
    
    func observeResult()  {}
    
    func obseverLoading() {}
    
}
