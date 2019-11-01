//
//  MainNavigationController.swift
//  onboardingLogin
//
//  Created by Javier Porras jr on 10/31/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit

class MainNavigationController: UINavigationController {
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        if isLoggedIn() {
            let homeController = HomeController()
            viewControllers = [homeController]
        }else{
            perform(#selector(showLoginController), with: nil, afterDelay: 0.01)
        }
    }
    fileprivate func isLoggedIn() -> Bool {
        return UserDefaults.standard.isLoggedIn()
    }
    
    @objc func showLoginController(){
        let loginController = LoginViewController()
        present(loginController, animated: true) {
            //completion here if any.
        }
    }
}
