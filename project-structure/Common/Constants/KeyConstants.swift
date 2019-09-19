//
//  KeyConstants.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/27/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import Foundation

struct Key {
    
    static let DeviceType = "iOS"
    
    struct UserDefaults {
        static let appRunningFirstTime = "userRunningAppFirstTime"
    }
    
    struct  NewsDefaults {
          static let defaultCountryCode = "US"
          static let PageSize = 10
    }
    
    struct Headers {
        static let Authorization = "Authorization"
        static let ContentType = "Content-Type"
        static let NewsApiKey = "e991749d19b64815a80e53b694a3df89"
        static let apiKey = "X-Api-Key"
        static let ApiKeyValue = "55axvd80c2jxp31y"
        static let langKey = "Accept-Language"
        static let authorizationKey = "Authorization"
        static let contentTypeKey = "Content-type"
        static let contentTypeValueKey = "application/json"
        static let encodingKey = "Accept-Encoding"
        static let encodingValue = "application/json"
    }
    
    struct ErrorMessage {
        static let listNotFound = "ERROR_LIST_NOT_FOUND"
        static let validationError = "ERROR_VALIDATION"
    }
}
