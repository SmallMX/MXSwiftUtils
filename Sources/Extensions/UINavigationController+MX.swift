//
//  File.swift
//  
//
//  Created by 刘明昕 on 2022/2/14.
//

import UIKit

extension UINavigationController {
    
    func pushViewController(_ viewController: UIViewController, animated: Bool, popViewControllerType: UIViewController.Type) {
        var viewControllers = self.viewControllers
        if let index = viewControllers.firstIndex(where: { $0.isKind(of: popViewControllerType) }) {
            viewControllers = viewControllers[0...index].map{ $0 }
        }
        viewControllers.append(viewController)
        self.setViewControllers(viewControllers, animated: animated)
    }
    
    func lastVCPushViewController(_ viewController: UIViewController, animated: Bool = true) {
        let count = self.viewControllers.count
        guard count > 1 else {
            self.pushViewController(viewController, animated: animated)
            return
        }
        
        var viewControllers = self.viewControllers
        viewControllers.removeLast()
        viewControllers.append(viewController)
        self.setViewControllers(viewControllers, animated: animated)
    }
    
}
