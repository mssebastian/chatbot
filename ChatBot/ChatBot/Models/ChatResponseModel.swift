//
//  ChatResponseModel.swift
//  ChatBot
//
//  Created by SebastianTC on 12/14/16.
//  Copyright © 2016 OvalMoney. All rights reserved.
//

import Foundation
import ObjectMapper

class ChatResponseModel: Mappable {
    
    var message: String?
    var type: String?
    var opts: [OptionsModel]?
    
    required init?(map: Map) {
        
    }
    
    func mapping(map: Map) {
        message <- map["description"]
        type <- map["name"]
        opts <- map["location"]
    }
}
