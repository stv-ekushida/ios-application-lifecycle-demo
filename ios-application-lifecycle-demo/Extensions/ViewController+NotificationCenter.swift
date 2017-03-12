//
//  ViewController+NotificationCenter.swift
//  ios-application-lifecycle-demo
//
//  Created by Kushida　Eiji on 2017/03/12.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension UIViewController {
    
    func addWillEnterForegroundObserver(_ observer: Any, selector aSelector: Selector) {

        NotificationCenter.default.addObserver(observer,
                                               selector:aSelector,
                                               name: Notification.Name.UIApplicationWillEnterForeground,
                                               object: nil)
    }
    
    func addDidBecomeActiveObserver(_ observer: Any, selector aSelector: Selector) {

        NotificationCenter.default.addObserver(observer,
                                               selector:aSelector,
                                               name: Notification.Name.UIApplicationDidBecomeActive,
                                               object: nil)
    }
    
    func addWillResignActiveObserver(_ observer: Any, selector aSelector: Selector) {
        
        NotificationCenter.default.addObserver(observer,
                                               selector:aSelector,
                                               name: Notification.Name.UIApplicationWillResignActive,
                                               object: nil)
    }
    
    func addDidEnterBackgroundObserver(_ observer: Any, selector aSelector: Selector) {
        
        NotificationCenter.default.addObserver(observer,
                                               selector:aSelector,
                                               name: NSNotification.Name.UIApplicationDidEnterBackground,                                               object: nil)
    }
    
    func addWillTerminateObserver(_ observer: Any, selector aSelector: Selector) {
        
        NotificationCenter.default.addObserver(observer,
                                               selector:aSelector,
                                               name: NSNotification.Name.UIApplicationWillTerminate,                                               object: nil)
    }
}
