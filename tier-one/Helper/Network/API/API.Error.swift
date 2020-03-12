//
//  API.Error.swift
//  tier-one
//
//  Created by Maxim Skorynin on 12.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

extension API {
    
    struct Error: Swift.Error {
        
        var code: String
        var message: String?
        
        var statusCode: String
        
    }
    
}
