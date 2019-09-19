//
//  AuthorizationApi.swift
//
//  Created by Mohamed Shaat on 7/28/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import Foundation
import Moya
import LocalizableLib

struct AuthorizationParamters {
    static let UserName = "user_name"
    static let Password = "password"
    static let DeviceToken = "device_token"
}

enum AuthorizationApi {
    case loginRequest(credentials: Credentials)
}

extension AuthorizationApi: TargetType, AccessTokenAuthorizable {
    
    var authorizationType: AuthorizationType {
        switch self {
        case .loginRequest(_):
            return .none
        }
    }
    
    var baseURL: URL {
        return URL(string: APPURL.BaseURL)!
    }
    
    var path: String {
        switch self {
        case .loginRequest(_):
            return  APPURL.Paths.LoginURl
        }
    }
    
    var method: Moya.Method {
        switch self {
        case .loginRequest :
            return .post
        }
    }
    
    var task: Task {
        switch self {
        case .loginRequest(let credentials):
            return .requestParameters(parameters:
                [
                    AuthorizationParamters.UserName: credentials.userName, AuthorizationParamters.Password: credentials.password, AuthorizationParamters.DeviceToken: Key.DeviceType
                ],
                                      encoding: JSONEncoding.default)
        }
    }
    
    var headers: [String : String]? {
        return
            [ Key.Headers.contentTypeKey: Key.Headers.contentTypeValueKey, Key.Headers.encodingKey: Key.Headers.encodingValue,
             Key.Headers.apiKey: Key.Headers.ApiKeyValue, Key.Headers.langKey: MoLocalization.currentAppleLanguage()]
    }
    
    var sampleData: Data { return Data() }  // We just need to return something here to fully implement the protocol
    
}

// MARK: - Helpers
private extension String {
    var urlEscaped: String {
        return addingPercentEncoding(withAllowedCharacters: .urlHostAllowed)!
    }
    
    var utf8Encoded: Data {
        return data(using: .utf8)!
    }
}
