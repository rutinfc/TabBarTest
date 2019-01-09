//
//  SecondViewController.swift
//  TabTest
//
//  Created by jeongkyu kim on 08/01/2019.
//  Copyright © 2019 jeongkyu kim. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
    }
    
    @IBAction func toggleTab(_ sender: Any) {
        
        guard let tabController = self.tabBarController else {
            return
        }
        tabController.tabBar.isHidden = !tabController.tabBar.isHidden
        tabController.view.setNeedsLayout()
    }
    
    @IBAction func toggleTabFrame(_ sender: Any) {
        
        guard let tabController = self.tabBarController else {
            return
        }
        
        tabController.tabbarHide(isHide: !tabController.tabBar.isHidden)
    }
}

