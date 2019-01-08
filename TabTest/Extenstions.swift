//
//  Extenstions.swift
//  TabTest
//
//  Created by jeongkyu kim on 08/01/2019.
//  Copyright © 2019 jeongkyu kim. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    func toImage() -> UIImage? {
        
        UIGraphicsBeginImageContext(CGSize(width: 1, height: 1))
        guard let context = UIGraphicsGetCurrentContext() else {
            return nil
        }
        context.setFillColor(self.cgColor)
        context.fill(CGRect(x: 0, y: 0, width: 1, height: 1))
        let image = UIGraphicsGetImageFromCurrentImageContext()
        UIGraphicsEndImageContext()
        return image
    }
}
