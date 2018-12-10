//
//  UIView+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import UIKit

extension UIView
{
    var pp_safeAreaInsets: UIEdgeInsets {
        get {
            if #available(iOS 11.0, *) {
                return safeAreaInsets
            } else {
                return .zero
            }
        }
    }
    
    @discardableResult
    func pp_addBorders(edges: UIRectEdge, color: UIColor, inset: CGFloat = 0.0, thickness: CGFloat = 1.0) -> [UIView]
    {
        var borders = [UIView]()
        
        @discardableResult
        func pp_addBorder(formats: String...) -> UIView
        {
            let border = UIView(frame: .zero)
            border.backgroundColor = color
            border.translatesAutoresizingMaskIntoConstraints = false
            addSubview(border)
            addConstraints(formats.flatMap {
                NSLayoutConstraint.constraints(withVisualFormat: $0,
                                               options: [],
                                               metrics: ["inset": inset, "thickness": thickness],
                                               views: ["border": border]) })
            borders.append(border)
            return border
        }
        
        if edges.contains(.top) || edges.contains(.all) {
            pp_addBorder(formats: "V:|-0-[border(==thickness)]", "H:|-inset-[border]-inset-|")
        }
        
        if edges.contains(.bottom) || edges.contains(.all) {
            pp_addBorder(formats: "V:[border(==thickness)]-0-|", "H:|-inset-[border]-inset-|")
        }
        
        if edges.contains(.left) || edges.contains(.all) {
            pp_addBorder(formats: "V:|-inset-[border]-inset-|", "H:|-0-[border(==thickness)]")
        }
        
        if edges.contains(.right) || edges.contains(.all) {
            pp_addBorder(formats: "V:|-inset-[border]-inset-|", "H:[border(==thickness)]-0-|")
        }
        
        return borders
    }
}
