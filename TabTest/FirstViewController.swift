//
//  FirstViewController.swift
//  TabTest
//
//  Created by jeongkyu kim on 08/01/2019.
//  Copyright © 2019 jeongkyu kim. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    @IBAction func toggleTab(_ sender: Any) {
        
        guard let tabController = self.tabBarController else {
            return
        }
        tabController.tabBar.isHidden = !tabController.tabBar.isHidden
        tabController.view.setNeedsLayout()
    }
}

class ResultViewController : FirstViewController {
    
    @IBOutlet weak var bottomSpace: NSLayoutConstraint?
    
    override func viewWillLayoutSubviews() {
        
        super.viewWillLayoutSubviews()
        
        guard let tabController = self.tabBarController else {
            return
        }
        
        if tabController.tabBar.isHidden {
            self.bottomSpace?.constant = self.bottomLayoutGuide.length * -1
        } else {
            self.bottomSpace?.constant = 0
        }
    }
    
    override func toggleTab(_ sender: Any) {
        super.toggleTab(sender)
        
        self.view.setNeedsUpdateConstraints()
    }
}
