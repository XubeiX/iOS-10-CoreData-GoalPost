//
//  UIViewControllerExt.swift
//  GoalPost
//
//  Created by Artur Ratajczak on 09/03/2019.
//  Copyright © 2019 Artur Ratajczak. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func presentDetail(_ viewControllerToPresent: UIViewController ){
        let transition = createDefaultTransition()
        transition.subtype = CATransitionSubtype.fromRight
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        present(viewControllerToPresent, animated: false, completion: nil)
    }
    
    func dismissDetail(){
        let transition = createDefaultTransition()
        transition.subtype = CATransitionSubtype.fromLeft
        self.view.window?.layer.add(transition, forKey: kCATransition)
        
        dismiss(animated: false, completion: nil)
    }
    
    func presentSecondaryDetail(_ viewControllerToPresent: UIViewController ){
        let transition = createDefaultTransition()
        transition.subtype = CATransitionSubtype.fromRight
        
        guard  let presentedViewController = presentedViewController else {
            return
        }
        
        presentedViewController.dismiss(animated: false, completion: {
            self.view.window?.layer.add(transition, forKey: kCATransition)
            self.present(viewControllerToPresent, animated: false, completion: nil)
        })
    }
    
    private func createDefaultTransition() -> CATransition {
        let transition = CATransition()
        transition.duration = 0.3
        transition.type = CATransitionType.push
        return transition
    }
    
    
}

