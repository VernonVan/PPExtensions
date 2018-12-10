//
//  UIScrollView+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import UIKit

extension UIScrollView
{
    func pp_maximumContentOffset() -> CGPoint
    {
        let x = max(-contentInset.left, contentSize.width + contentInset.right - bounds.width)
        let y = max(-contentInset.top, contentSize.height + contentInset.bottom - bounds.height)
        return CGPoint(x: x, y: y)
    }
}
