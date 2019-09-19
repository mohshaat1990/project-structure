//
//	RootClass.swift
//
//	Create by passant on 20/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class LoginResponse: Mappable {

	var message: String?
    var error: String?
	var status: Bool?
	var user: User?
    var errors: ErrorResponse?

	required init?(map: Map){}
	 init(){}

	func mapping(map: Map) {
        error <- map["error"]
		message <- map["message"]
		status <- map["status"]
		user <- map["user"]
        errors <- map["errors"]
		
	}
}
