//
//  UIScreen+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import UIKit

enum PPScreenPhysicalSize: Int
{
    case unknown = -1
    case inch_3_5 = 0       // iPhone 4, 或者是在 iPad 上运行 iPhone App
    case inch_4_0 = 1       // iPhone 5, 或者是 iPhone 6 使用放大模式
    case inch_4_7 = 2       // iPhone 6, 或者是 iPhone 6 Plus 使用放大模式
    case inch_5_5 = 3       // iPhone 6 Plus
    case inch_5_8 = 4       // iPhone X, iPhone Xs
    case inch_6_1 = 5       // iPhone Xr
    case inch_6_5 = 6       // iPhone Xs Max
}

extension UIScreen
{
    static var pp_onePixelToPoint: CGFloat = {
        return 1.0 / UIScreen.main.scale
    }()
    
    func pp_physicalSize() -> PPScreenPhysicalSize
    {
        var size = bounds.size
        if size.width > size.height {
            let temp = size.height
            size.height = size.width
            size.width = temp
        }
        
        if size == CGSize(width: 320, height: 480) {
            return .inch_3_5
        } else if size == CGSize(width: 320, height: 568) {
            return .inch_4_0
        } else if size == CGSize(width: 375, height: 667) {
            return .inch_4_7
        } else if size == CGSize(width: 414, height: 736) {
            return .inch_5_5
        } else if size == CGSize(width: 375, height: 812) {
            return .inch_5_8
        } else if size == CGSize(width: 414, height: 896) {
            return (scale == 3 ? .inch_6_5 : .inch_6_1)
        }
        
        return .unknown     // 无法识别的屏幕尺寸
    }
}
