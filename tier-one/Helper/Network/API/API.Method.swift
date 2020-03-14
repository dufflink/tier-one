//
//  API.Method.swift
//  tier-one
//
//  Created by Maxim Skorynin on 12.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import Moya

extension API {
    
    struct URLConstants {
        
        static let baseURL = URL(string: "https://api.esportsdirectory.info")!
        
    }
    
}

extension API {
    
    enum Method: TargetType {
        
        case authorizeAPIBayes
        
        var baseURL: URL {
            switch self {
                case .authorizeAPIBayes:
                    return URLConstants.baseURL
            }
        }
        
        var path: String {
            var target: String
            let version = "1"
            
            switch self {
                case .authorizeAPIBayes:
                    target = "auth"
            }
            
            return "v\(version)/\(target)/"
        }
        
        var task: Task {
            var requestObject: Encodable?
            let parameters: [String: Any] = [:]
            
            switch self {
                case .authorizeAPIBayes:
                    requestObject = AuthorizeAPIBayesRequest(username: "tieronemain@gmail.com", password: "6p2zyMHRRJZEfD2")
            }
            
            if let requestObject = requestObject {
                return .requestJSONEncodable(requestObject)
            }
            
            return .requestParameters(parameters: parameters, encoding: URLEncoding.default)
        }
        
        var sampleData: Data {
            return Data()
        }
        
        var method: Moya.Method {
            switch self {
                case .authorizeAPIBayes:
                    return .post
            }
        }
        
        var headers: [String: String]? {
            return nil
        }
        
    }
    
}
