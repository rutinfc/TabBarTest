//
//  SubViewController.swift
//  TabTest
//
//  Created by jeongkyu kim on 09/01/2019.
//  Copyright © 2019 jeongkyu kim. All rights reserved.
//

import UIKit

class SubViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    @IBAction func toggle(_ sender: Any) {
        
        guard let tabController = self.tabBarController else {
            return
        }
        
        tabController.tabBar.isHidden = !tabController.tabBar.isHidden
//        tabController.view.setNeedsLayout()
//        self.view.setNeedsLayout()
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
