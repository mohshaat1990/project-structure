//
//  RegisterViewController.swift
//  project-structure
//
//  Created by Mohamed Shaat on 8/26/19.
//  Copyright © 2019 shaat. All rights reserved.
//

import UIKit

class RegisterViewController: UIViewController {
    typealias ViewModelType = RegisterViewModel
    private var viewModel: ViewModelType!
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

extension RegisterViewController: ControllerType {
    func configure(with viewModel: RegisterViewModel) {
        
    }
    
    
    static func create(with viewModel: RegisterViewModel) -> UIViewController? {
        let storyboard = UIStoryboard(name: "Authorizations", bundle: nil)
        let controller = storyboard.instantiateViewController(withIdentifier: "RegisterViewController") as? RegisterViewController
        return controller
    }
}
