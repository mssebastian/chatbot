//
//  ValueModel.swift
//  ChatBot
//
//  Created by SebastianTC on 12/14/16.
//  Copyright © 2016 OvalMoney. All rights reserved.
//

import Foundation
import ObjectMapper

class ValueModel: Mappable {
    
    var node: String?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        node <- map["node"]
    }
}
