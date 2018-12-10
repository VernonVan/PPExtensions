//
//  Date+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import Foundation

public extension Date
{
    func pp_daysBetweenDate(date: Date) -> Int
    {
        let secondsBetween = date.timeIntervalSince(self)
        let days = Int(ceil(secondsBetween / 86400))
        return days
    }
}
