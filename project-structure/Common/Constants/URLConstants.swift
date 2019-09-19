//
//  URLConstants.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/27/19.
//  Copyright © 2019 shaat. All rights reserved.
//

struct APPURL {
    
    private struct Domains {
        static let Dev = "https://newsapi.org"
        static let UAT = "https://newsapi.org"
        static let Local = "192.145.1.1"
        static let QA = "testAddress.qa.com"
    }
    
    private  struct Routes {
        static let Api = "" // for example api
    }
    
    private  struct Versions {
        static let Version1 = "/v1" // for example V1
        static let Version2 = "/v2" // for example V2
    }
    
    private  static let Domain = Domains.Dev
    private  static let Version = Versions.Version2
    private  static let Route = Routes.Api
 
    public static var BaseURL: String {
        return  APPURL.Domain + APPURL.Route + APPURL.Version
    }
    
    struct Paths {
        static let UsersURL = "/users"
        static let LoginURl  = UsersURL + "/login"
        static let NewsUrl  =  "/top-headlines"
    }
    
}
