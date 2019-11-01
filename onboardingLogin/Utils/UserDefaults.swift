//
//  UserDefaults.swift
//  onboardingLogin
//
//  Created by Javier Porras jr on 11/1/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import Foundation

extension UserDefaults{
    enum UserDefaultsKeys: String {
        case isLoggedIn
    }
    
    func setIsLoggedIn(value: Bool){
        set(value, forKey: UserDefaultsKeys.isLoggedIn.rawValue)//UserDefaults.standard.set(value: Bool, forKey: String)
        synchronize()//save values
    }
    func isLoggedIn() -> Bool{
        return bool(forKey: UserDefaultsKeys.isLoggedIn.rawValue)
    }
}
