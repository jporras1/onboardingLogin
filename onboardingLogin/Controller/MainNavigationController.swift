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
        return false
    }
    
    @objc func showLoginController(){
        let loginController = LoginViewController()
        present(loginController, animated: true) {
            //
        }
    }
    @objc func a_(){
        
    }
}

class HomeController: UIViewController{
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .yellow
        navigationItem.title = "We're logged in"
        
        
        let imageView = UIImageView(image: UIImage(named: "home"))
        
        view.addSubview(imageView)
        imageView.anchor_(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
}
