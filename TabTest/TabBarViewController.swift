//
//  TabBarViewController.swift
//  TabTest
//
//  Created by jeongkyu kim on 08/01/2019.
//  Copyright © 2019 jeongkyu kim. All rights reserved.
//

import UIKit

class TabBarViewController: UITabBarController {
    
    
    
    static func appearance() {
        UITabBar.appearance().backgroundImage = UIColor.blue.toImage()
        UITabBar.appearance().shadowImage = UIColor.red.toImage()
    }
    
    static func appearance_clear() { // tab bar item만 제외하고 모두 clear처리
        UITabBar.appearance().backgroundColor = UIColor.clear
        UITabBar.appearance().backgroundImage = UIColor.clear.toImage()
        UITabBar.appearance().shadowImage = UIColor.clear.toImage()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.edgesForExtendedLayout = [UIRectEdge.bottom, UIRectEdge.top]
//        self.extendedLayoutIncludesOpaqueBars
//        self.tabBar.isTranslucent = true
//        self.delegate = self
    }

    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: { context in
            self.updateCurrentViewControllerFrame()
        }, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
}

extension UITabBarController {
    
    func tabbarHide(isHide : Bool) {
        
        if self.tabBar.isHidden == isHide {
            return
        }
        self.tabBar.isHidden = isHide
        self.updateCurrentViewControllerFrame()
    }
    
    func updateCurrentViewControllerFrame() {
        
        guard var currentVC = self.viewControllers?[self.selectedIndex] else {
            return
        }

        if let vc = currentVC as? UINavigationController, let visible = vc.visibleViewController {
            currentVC = visible
        }
        
        if (currentVC is SecondViewController) == false {
            return
        }

        guard let windowBounds = UIApplication.shared.keyWindow?.bounds, let currentView = currentVC.view else{
            return
        }

        var frame : CGRect = windowBounds

        if self.tabBar.isHidden == false {
            frame = CGRect(x: 0, y: 0, width: currentView.frame.width, height: (windowBounds.height) - self.tabBar.bounds.size.height)
        }

        if currentView.frame != frame {
            currentView.frame = frame
            currentView.setNeedsLayout()
        }
    }
    
    /// `true` if the tab bar is currently hidden.
    
}

extension TabBarViewController : UITabBarControllerDelegate {
    
    func tabBarController(_ tabBarController: UITabBarController, willBeginCustomizing viewControllers: [UIViewController]) {
        print("<---------- 1")
    }
}
