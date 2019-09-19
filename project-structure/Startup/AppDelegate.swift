//
//  AppDelegate.swift
//  News-MVVM
//
//  Created by Mohamed Shaat on 7/27/19.
//  Copyright © 2019 shaat. All rights reserved.
//
import RxSwift
import RxFlow
import UIKit
import LocalizableLib
@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
    let disposeBag = DisposeBag()
    var window: UIWindow?
    var coordinator = FlowCoordinator()
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        guard let window = self.window else { return false }
        setupAppFLow(window: window)
        //String.passant
        // listening for the coordination mechanism is not mandatory, but can be useful
    
        return true
    }
    
    func setupAppFLow(window: UIWindow) {
        coordinator.rx.didNavigate.subscribe(onNext: { (flow, step) in
            print ("did navigate to flow=\(flow) and step=\(step)")
        }).disposed(by: self.disposeBag)
        
        let appFlow = LoginFlow()
        Flows.whenReady(flow1: appFlow) { root in
            window.rootViewController = root
            window.makeKeyAndVisible()
        }
        
        self.coordinator.coordinate(flow: appFlow, with: AppStepper())
    }
    
}
