//
//  project-structureFlow.swift
//  project-structure
//
//  Created by Mohamed Shaat on 8/26/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import Foundation
import UIKit
import RxFlow
import RxCocoa
import RxSwift

class LoginFlow: Flow {
    var root: Presentable {
        return self.rootViewController
    }
    
    private lazy var rootViewController: UINavigationController = {
        let viewController = UINavigationController()
        viewController.setNavigationBarHidden(true, animated: false)
        return viewController
    }()
    
    deinit {
        print("\(type(of: self)): \(#function)")
    }
    
    func navigate(to step: Step) -> FlowContributors {
        guard let step = step as? MorniStep else { return .none }
        
        switch step {
        case .loginIsRequired:
            return navigationToLoginScreen()
        case .registerIsRequired:
            return self.navigationToRegisterScreen()
        default:
            return .none
        }
    }
    
    private func navigationToLoginScreen() -> FlowContributors {
        let loginViewModel = LoginViewModel(AuthorizationService())
        let loginViewController = LoginViewController.create(with: loginViewModel)
        self.rootViewController.pushViewController(loginViewController!, animated: true)
        return .one(flowContributor: .contribute(withNextPresentable: loginViewController!, withNextStepper: loginViewModel))
        
    }
    private func navigationToRegisterScreen() -> FlowContributors {
        let registerViewModel = RegisterViewModel(AuthorizationService())
        let registerViewController = RegisterViewController.create(with: registerViewModel)
        self.rootViewController.pushViewController(registerViewController!, animated: true)
        return .one(flowContributor: .contribute(withNextPresentable: registerViewController!, withNextStepper: registerViewModel))
        
    }
}
