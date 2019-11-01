//
//  HomeController.swift
//  onboardingLogin
//
//  Created by Javier Porras jr on 11/1/19.
//  Copyright © 2019 Javier Porras jr. All rights reserved.
//

import UIKit


class HomeController: UIViewController{
    //MARK: Properties
    let imageView = UIImageView(image: UIImage(named: "home"))
    
    //MARK: Handlers - Helpers
    fileprivate func setupViews() {
        navigationItem.title = "We're logged in"
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "Sign Out", style: .plain, target: self, action: #selector(handleSignOut))
        view.addSubview(imageView)
        imageView.anchor_(view.topAnchor, left: view.leftAnchor, bottom: view.bottomAnchor, right: view.rightAnchor, topConstant: 64, leftConstant: 0, bottomConstant: 0, rightConstant: 0, widthConstant: 0, heightConstant: 0)
    }
    @objc func handleSignOut(){
        UserDefaults.standard.setIsLoggedIn(value: false)
        let loginViewController = LoginViewController()
        present(loginViewController, animated: true, completion: nil)
    }
    
    //MARK: Init
    override func viewDidLoad() {
        super.viewDidLoad()
        setupViews()
    }
}

