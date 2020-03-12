//
//  API.swift
//  tier-one
//
//  Created by Maxim Skorynin on 12.03.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import Moya

final class API {
    
    static let shared = API()
    
    private let jsonDecoder = JSONDecoder()
    
    private init() { }
    
    private lazy var provider: MoyaProvider<Method> = {
        let configuration = URLSessionConfiguration.default
        configuration.timeoutIntervalForRequest = 15
        
        // Что бы вывести логи Moya добавьте параметр plugins в MoyaProvider.init(manager:) с значением [NetworkLoggerPlugin(verbose: true)]
        let session = Session(configuration: configuration)
        let provider = MoyaProvider<API.Method>(session: session)
        
        return provider
    }()
    
    // MARK: - Public Functions
    
    func authorize() -> Promise<Empty> {
        let method = API.Method.authorize
        return Promise(method)
    }
    
    func request<T: Decodable>(_ method: API.Method, with promise: Promise<T>) -> Cancellable {
        return provider.request(method) { response in
            switch response {
                case .success(let response):
                    
                    if let json = try? response.mapJSON(), let data = try? JSONSerialization.data(withJSONObject: json, options: .prettyPrinted) {
                        if let string = NSString(data: data, encoding: String.Encoding.utf8.rawValue) {
                            print(string)
                        }
                    } else {
                        if let string = try? response.mapString() {
                            print(string)
                        }
                    }
                    
                    let error = API.Error(code: "", message: nil, statusCode: "")
                    
                    switch response.statusCode {
                        case 200 ..< 300:
                            switch T.self {
                                case is Empty.Type:
                                    if let object = Empty() as? T {
                                        promise.finish(object)
                                    } else {
//                                        error.code = .parsingFailure
                                        promise.finish(error)
                                    }
                                default:
                                    if let object = try? self.jsonDecoder.decode(T.self, from: response.data) {
                                        promise.finish(object)
                                    }
                            }
                        case 403:
//                            error.code = .permissionDenied
                            promise.finish(error)
                        default:
                        break
//                            if let object = try? self.jsonDecoder.decode(ProcessingError.self, from: response.data) {
//                                if let code = API.Error.Code(rawValue: object.code) {
//                                    error.code = code
//                                    error.message = object.message
//
//                                    promise.finish(error)
//                                }
//                            } else {
//                                promise.finish(error)
//                            }
//
//                            if error.code == .invaldToken || error.code == .authenticationFailed {
//                                let retryAction = {
//                                    promise.restart()
//                                }
//
//                                AuthorizeManager.shared.retryActions.append(retryAction)
//
//                                if !AuthorizeManager.shared.isRefreshing {
//                                    AuthorizeManager.shared.reauthorize()
//                                }
//                            }
                    }
                
                case .failure(let error):
                    print(error.errorDescription ?? "Failure error description (nil)")
                    
                    let error = API.Error(code: "", message: nil, statusCode: "")
                    promise.finish(error)
            }
        }
    }
    
}
