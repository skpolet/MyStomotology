//
//  Location.swift
//  MyStomotology
//
//  Created by Sergey Mikhailov on 22.10.2019.
//  Copyright © 2019 Mikhailov. All rights reserved.
//

import Foundation
import Alamofire
import ObjectMapper

class SharedLocation {
    static var instance = SharedLocation()
    var longitude = 0.0
    var latitude = 0.0
    var city = ""
    var region = ""
}

class Location: Mappable {
    var id: String?
    var regionId: String?
    var title: String?
    var highlight: String?
    
    required init?(map: Map){
        
    }
    
    func mapping(map: Map) {
        id <- map["id"]
        regionId <- map["regionId"]
        title <- map["title"]
        highlight <- map["highlight"]
    }
}
