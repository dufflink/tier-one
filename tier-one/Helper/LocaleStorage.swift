//
//  LocaleStorage.swift
//  tier-one
//
//  Created by Maxim Skorynin on 08.02.2020.
//  Copyright © 2020 Maxim Skorynin. All rights reserved.
//

import KeychainAccess

final class LocaleStorage {
    
    static let shared = LocaleStorage()
    private let keychain = Keychain()
    
    var isAuthenticate: Bool {
        return false
    }
    
    // MARK: - Encrypting Fields
    
    var token: String? {
        get {
            return getFromKeychain(forKey: "token")
        } set {
            writeToKeychain(newValue, forKey: "token")
        }
    }
    
    // MARK: - Private Function

    private func getFromKeychain(forKey: String) -> String? {
        return try? keychain.get(forKey)
    }
    
    private func writeToKeychain(_ value: String?, forKey: String) {
        if let value = value {
            try? keychain.set(value, key: forKey)
        } else {
            try? keychain.remove(forKey)
        }
    }
    
}
