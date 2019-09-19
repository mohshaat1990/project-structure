//
//	Error.swift
//
//	Create by passant on 22/5/2018
//	Copyright © 2018. All rights reserved.
//	Model file generated using JSONExport: https://github.com/Ahmed-Ali/JSONExport

import Foundation 
import ObjectMapper


class ErrorResponse: NSObject, Mappable, Error {
   
    var name: String?
    var password: String?
    
	class func newInstance(map: Map) -> Mappable? {
		return ErrorResponse()
	}
    
	required init?(map: Map){}
    
	private override init(){}

	func mapping(map: Map) {
        name <- map["name"]
        password <- map["password"]
	}
    
}
