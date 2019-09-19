//
//  RealmTransformer.swift
//  Prexle
//
//  Created by mohamed shaat on 9/16/18.
//  Copyright © 2018 mohamed shaat. All rights reserved.
//

import UIKit
import ObjectMapper
import RealmSwift
class RealmListTransform<T:Object>: TransformType where T: StaticMappable {
    
    typealias Object = List<T>
    typealias JSON = [[String:Any]]
    
    let mapper = Mapper<T>()
    
    func transformFromJSON(_ value: Any?) -> List<T>? {
        let result = List<T>()
        if let tempArr = value as? [Any] {
            for entry in tempArr {
                let mapper = Mapper<T>()
                let model: T = mapper.map(JSONObject: entry)!
                result.append(model)
            }
        }
        return result
    }
    
    func transformToJSON(_ value: Object?) -> JSON? {
        var results = [[String:Any]]()
        if let value = value {
            for obj in value {
                let json = mapper.toJSON(obj)
                results.append(json)
            }
        }
        return results
    }
}
