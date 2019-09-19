//
//  BaseObject.swift
//  Prexle
//
//  Created by mohamed shaat on 9/4/18.
//  Copyright © 2018 mohamed shaat. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift
class BaseObject: Object, StaticMappable {
    
    public class func objectForMapping(map: Map) -> BaseMappable? {
        return self.init()
    }
    
    public func mapping(map: Map) {
        //for subclasses
    }
}
