//
//  ViewController.swift
//  ios-application-lifecycle-demo
//
//  Created by Kushida　Eiji on 2017/03/12.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension Selector {
    static let vcDidBecomeActive = #selector(ViewController.didBecomeActive)
    static let vcWillEnterForeground = #selector(ViewController.willEnterForeground)
    static let vcWillResignActive = #selector(ViewController.willResignActive)
    static let vcDidEnterBackground = #selector(ViewController.didEnterBackground)
    static let vcWillTerminate = #selector(ViewController.willTerminate)
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        setupWillEnterForeground()
        setupDidBecomeActive()
        setupWillResignActive()
        setupDidEnterBackground()
        setupWillTerminate()
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        NotificationCenter.default.removeObserver(self)
    }
    
    /// フォアグラウンドになる直前に呼ばれる
    func setupWillEnterForeground() {
        self.addWillEnterForegroundObserver(self, selector: .vcWillEnterForeground)
    }

    /// アクティブになったら呼ばれる
    func setupDidBecomeActive() {
        self.addDidBecomeActiveObserver(self, selector: .vcDidBecomeActive)
    }
    
    /// アクティブでなくなる直前に呼ばれる
    func setupWillResignActive() {        
        self.addWillResignActiveObserver(self, selector: .vcWillResignActive)
    }
    
    /// バックグラウンドになったら呼ばれる
    func setupDidEnterBackground() {
        self.addDidEnterBackgroundObserver(self, selector: .vcDidEnterBackground)
    }

    /// 終了する直前に呼ばれる
    func setupWillTerminate() {
        self.addWillTerminateObserver(self, selector: .vcWillTerminate)
    }

    /// Callback
    func didBecomeActive() {
        print(#file, #function)
    }
    
    func willEnterForeground() {
        print(#file, #function)
    }
    
    func willResignActive() {
        print(#file, #function)
    }
    
    func didEnterBackground() {
        print(#file, #function)
    }
    
    func willTerminate() {
        print(#file, #function)
    }
    
    @IBAction func didTapButton(_ sender: UIButton) {
        
        let vc = UIStoryboard.getViewController("Main", identifier: "DetailViewController")
        self.present(vc!, animated: true, completion: nil)
    }
}

