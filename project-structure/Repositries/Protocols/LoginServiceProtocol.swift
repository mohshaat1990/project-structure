//
//  LoginServiceProtocol.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/30/19.
//  Copyright © 2019 shaat. All rights reserved.
//
import RxSwift

protocol LoginServiceProtocol {
    func signIn(with credentials: Credentials) -> Observable<User>
}
