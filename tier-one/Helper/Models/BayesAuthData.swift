//
//  BayesAuthData.swift
//  tier-one
//
//  Created by Maxim Skorynin on 14.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

struct BayesAuthData: Codable {
    
    // MARK: - Data Fields
    
    let isSuccess: Bool
    let message: String?
    
    let accessToken: String?
    let refreshToken: String?
    
    // MARK: - Keys
    
    enum CodingKeys: String, CodingKey {
        
        case isSuccess = "success"
        case message = "message"
        
        case accessToken = "access_token"
        case refreshToken = "refresh_token"
        
    }
    
}
