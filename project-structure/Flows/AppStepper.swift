//
//  AppStepper.swift
//  project-structure
//
//  Created by Mohamed Shaat on 8/26/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import UIKit
import RxFlow
import RxCocoa
import RxSwift

class AppStepper: Stepper {
    let steps = PublishRelay<Step>()
    private let disposeBag = DisposeBag()
    var initialStep: Step {
        return MorniStep.loginIsRequired
    }
}
