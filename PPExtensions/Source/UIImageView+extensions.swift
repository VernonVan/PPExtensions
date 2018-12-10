//
//  UIImageView+extensions.swift
//  PPExtension
//
//  Created by Vernon on 2018/12/10.
//  Copyright © 2018 Vernon. All rights reserved.
//

import UIKit

private let imageAppearDuration: CFTimeInterval = 0.3

extension UIImageView
{
    private static var pp_sharedAnimationQueue: OperationQueue {
        let sharedAnimationQueue = OperationQueue()
        sharedAnimationQueue.name = "com.vernonvan.UIImageView.animationQueue"
        sharedAnimationQueue.maxConcurrentOperationCount = 20
        return sharedAnimationQueue
    }
    
    func pp_fadeInWithImage(image: UIImage?)
    {
        guard let image = image else {
            self.image = nil
            return
        }
        
        UIImageView.pp_sharedAnimationQueue.addOperation { [unowned self] in
            let transition = CATransition()
            transition.duration = imageAppearDuration
            transition.timingFunction = CAMediaTimingFunction(name: .easeInEaseOut)
            transition.type = .fade
            
            DispatchQueue.main.async { [unowned self] in
                self.layer.add(transition, forKey: nil)
                self.image = image
            }
        }
    }
}
