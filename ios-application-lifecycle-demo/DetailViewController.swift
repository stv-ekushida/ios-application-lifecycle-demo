//
//  DetailViewController.swift
//  ios-application-lifecycle-demo
//
//  Created by Kushida　Eiji on 2017/03/12.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupWillEnterForeground()
        setupDidBecomeActive()
        setupWillResignActive()
        setupDidEnterBackgroundNotification()
        setupWillTerminateNotification()
    }

    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// フォアグラウンドになる直前に呼ばれる
    func setupWillEnterForeground() {
        
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(willEnterForeground),
                                               name: NSNotification.Name.UIApplicationWillEnterForeground,
                                               object: nil)
    }
    
    /// アクティブになったら呼ばれる
    func setupDidBecomeActive() {
        
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(didBecomeActive),
                                               name: NSNotification.Name.UIApplicationDidBecomeActive,
                                               object: nil)
    }
    
    /// アクティブでなくなる直前に呼ばれる
    func setupWillResignActive() {
        
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(willResignActive),
                                               name: NSNotification.Name.UIApplicationWillResignActive,
                                               object: nil)
    }
    
    /// バックグラウンドになったら呼ばれる
    func setupDidEnterBackgroundNotification() {
        
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(didEnterBackgroundNotification),
                                               name: NSNotification.Name.UIApplicationDidEnterBackground,                                               object: nil)
    }
    
    /// 終了する直前に呼ばれる
    func setupWillTerminateNotification() {
        
        NotificationCenter.default.addObserver(self,
                                               selector:#selector(willTerminateNotification),
                                               name: NSNotification.Name.UIApplicationWillTerminate,                                               object: nil)
    }
    
    /// Callbak
    func didBecomeActive() {
        print(#file, #function)
    }
    
    func willEnterForeground() {
        print(#file, #function)
    }
    
    func willResignActive() {
        print(#file, #function)
    }
    
    func didEnterBackgroundNotification() {
        print(#file, #function)
    }
    
    func willTerminateNotification() {
        print(#file, #function)
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        self.dismiss(animated: true, completion: nil)
    }
}
