//
//  Storyboard+Scene.swift
//  ios-application-lifecycle-demo
//
//  Created by Kushida　Eiji on 2017/03/12.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension UIStoryboard {
    
    static func getViewController<T: UIViewController>(_ storyboardName: String, identifier: String) -> T? {
        return UIStoryboard(name: storyboardName, bundle: nil).instantiateViewController(withIdentifier: identifier) as? T
    }
}
