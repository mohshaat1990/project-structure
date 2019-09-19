//
//  LoginViewController.swift
//  News 
//
//  Created by mohamed shaat on 7/4/18.
//  Copyright © 2018 mohamed shaat. All rights reserved.
//

import UIKit
import TransitionButton
import RxSwift
import RxCocoa

class LoginViewController: UIViewController {
    typealias ViewModelType = LoginViewModel
    // MARK: - Properties
    private var viewModel: ViewModelType!
    private var loginService = AuthorizationService()
    private let disposeBag = DisposeBag()
    // MARK: - UI
    @IBOutlet weak var userNameTextField: CustomTextFiled!
    @IBOutlet weak var passwordTextField: CustomTextFiled!
    @IBOutlet weak var loginButtonAction: TransitionButton!
    // MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
        setupTextFields()
        configure(with: viewModel)
    }
    
    // MARK: - Functions
    func setupTextFields() {
        userNameTextField.textFiled.returnKeyType = .next
        passwordTextField.textFiled.returnKeyType = .done
        passwordTextField.textFiled.text = ""
    }
    
    func updateTextFields(error: ErrorResponse) {
        self.userNameTextField.errorMessage = error.name ?? ""
        self.passwordTextField.errorMessage = error.password ?? ""
    }
}

// MARK: - View Model Configure

extension LoginViewController: ControllerType {
    
    func configure(with viewModel: LoginViewModel) {
        bindViews()
        observeErrors()
        observeResult()
        obseverLoading()
    
    }
    
    static func create(with viewModel: LoginViewModel) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Authorizations", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "LoginViewController") as? LoginViewController
        controller?.viewModel = viewModel
        return controller
    }
}
// MARK: - RX Configure
extension LoginViewController: ConfigureRx {
    
    func bindViews() {
        userNameTextField.textFiled.rx.text.asObservable()
            .ignoreNil()
            .subscribe(viewModel.input.userName)
            .disposed(by: disposeBag)
        passwordTextField.textFiled.rx.text.asObservable()
            .ignoreNil()
            .subscribe(viewModel.input.password)
            .disposed(by: disposeBag)
        loginButtonAction.rx.tap
            .subscribe(viewModel.input.signInDidTap)
            .disposed(by: disposeBag)
    }
    
    func observeErrors() {
        viewModel.output.validationErrorsObservable.subscribe(onNext:{ (error) in
            self.updateTextFields(error: error)
        }).disposed(by: disposeBag)
        
        viewModel.output.serverErrorsObservable.subscribe({ (error) in
            //self.presentMessage(error)
        }).disposed(by: disposeBag)
    }
    
    func observeResult() {
        viewModel.output.loginResultObservable.subscribe(onNext:{  (user) in
            self.performSegue(withIdentifier:"NewsViewController", sender: nil)
        }).disposed(by: disposeBag)
    }
    
    func obseverLoading() {
        viewModel.output.rxIsLoading.subscribe(onNext:{  (loading) in
            if loading == true {
                self.loginButtonAction.startAnimation()
            } else {
                self.loginButtonAction.stopAnimation()
            }
        }).disposed(by: disposeBag)
    }
}


