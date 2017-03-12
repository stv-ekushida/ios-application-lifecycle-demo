//
//  DetailViewController.swift
//  ios-application-lifecycle-demo
//
//  Created by Kushida　Eiji on 2017/03/12.
//  Copyright © 2017年 Kushida　Eiji. All rights reserved.
//

import UIKit

extension Selector {
    static let dvcDidBecomeActive = #selector(DetailViewController.didBecomeActive)
    static let dvcWillEnterForeground = #selector(DetailViewController.willEnterForeground)
    static let dvcWillResignActive = #selector(DetailViewController.willResignActive)
    static let dvcDidEnterBackground = #selector(DetailViewController.didEnterBackground)
    static let dvcWillTerminate = #selector(DetailViewController.willTerminate)
}

class DetailViewController: UIViewController {
    
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
        self.addWillEnterForegroundObserver(self, selector: .dvcWillEnterForeground)
    }
    
    /// アクティブになったら呼ばれる
    func setupDidBecomeActive() {
        self.addDidBecomeActiveObserver(self, selector: .dvcDidBecomeActive)
    }
    
    /// アクティブでなくなる直前に呼ばれる
    func setupWillResignActive() {
        self.addWillResignActiveObserver(self, selector: .dvcWillResignActive)
    }
    
    /// バックグラウンドになったら呼ばれる
    func setupDidEnterBackground() {
        self.addDidEnterBackgroundObserver(self, selector: .dvcDidEnterBackground)
    }
    
    /// 終了する直前に呼ばれる
    func setupWillTerminate() {
        self.addWillTerminateObserver(self, selector: .dvcWillTerminate)
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
        self.dismiss(animated: true, completion: nil)
    }
}
