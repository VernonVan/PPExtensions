//
//  UserDefaults+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import Foundation

public extension UserDefaults
{
    func pp_contains(key: String) -> Bool
    {
        return UserDefaults.standard.object(forKey: key) != nil
    }
}
