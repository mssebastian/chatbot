//
//  OptionsModel.swift
//  ChatBot
//
//  Created by SebastianTC on 12/14/16.
//  Copyright © 2016 OvalMoney. All rights reserved.
//

import Foundation
import ObjectMapper

class OptionsModel: Mappable {
    
    var text: String?
    var value: ValueModel?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        text <- map["text"]
        value <- map["value"]
    }
}
