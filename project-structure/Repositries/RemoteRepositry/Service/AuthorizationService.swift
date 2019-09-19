//
//  AuthorizationService.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/28/19.
//  Copyright © 2019 shaat. All rights reserved.
//


import RxSwift
import Moya
import Moya_ObjectMapper

class AuthorizationService: LoginServiceProtocol {
    func signIn(with credentials: Credentials) -> Observable<User> {
        return Observable.create { observer in
            let provider = MoyaProvider<AuthorizationApi>()
            provider.rx.request(.loginRequest(credentials: credentials))
                .filterSuccessfulStatusCodes().mapObject(User.self)
                .subscribe(onSuccess: { (user) in
                    observer.onNext(user)
                }, onError: { (error) in
                    observer.onError(error)
                })
            return Disposables.create()
        }
    }
}
