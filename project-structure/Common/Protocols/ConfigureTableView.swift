//
//  ConfigureTableView.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/31/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import UIKit

protocol ConfigurableTableView {
    func startWindless()
    func registerCell()
    func initPullToRefresh()
    func initLoadMoreToRefresh()
}

extension ConfigurableTableView {
    func startWindless() {}
    func initPullToRefresh() {}
    func initLoadMoreToRefresh(){}
}

