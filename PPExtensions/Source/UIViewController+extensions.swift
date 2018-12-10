//
//  UIViewController+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import UIKit

public extension UIViewController
{
    func pp_statusBarMargin() -> CGFloat
    {
        return UIApplication.shared.statusBarFrame.height
    }
}
