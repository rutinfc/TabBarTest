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
//        UITabBar.appearance().backgroundColor = UIColor.blue

        UITabBar.appearance().backgroundImage = UIColor.blue.toImage()
        UITabBar.appearance().shadowImage = UIColor.red.toImage()
    }

    override func viewDidLoad() {
        super.viewDidLoad()
//        self.tabBar.isTranslucent = true
        // Do any additional setup after loading the view.
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
