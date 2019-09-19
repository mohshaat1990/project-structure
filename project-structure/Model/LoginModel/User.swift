//
//	User.swift
//
//  Created by Mohamed Shaat on 7/28/19.
//  Copyright © 2019 shaat. All rights reserved.
//
import Foundation 
import ObjectMapper

class User: NSObject, Mappable {
    
	var email: String?
	var mobile: String?
	var userName: String?
	var token: String?
    var refreshToken: String?
    var message: String?
    var error: String?
    var status: Int?
    var errors: ErrorResponse?

	class func newInstance(map: Map) -> Mappable? {
		return User()
	}
    
	required init?(map: Map) {}
    
	 override init() {}

	func mapping(map: Map) {
		mobile <- map["mobile"]
		userName <- map["user_name"]
        message <- map["message"]
        status <- map["status"]
        token  <- map["auth_token"]
        refreshToken  <- map["refresh_token"]
	}

}
