//
//  ViewController.swift
//  Fakestagram
//
//  Created by Grecia Escárcega on 27/09/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    private var customView: LoginView {
        return view as! LoginView
    }
    
    override func loadView() {//Nunca debe llamar a super
        view = LoginView()
        //print("view did load")
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("view did load")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print("view will appear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        print("view did appear")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disppear")
    }
    
    private func validateCredentials(user: String, password: String) -> Bool {
        return true
    }
    
    @IBAction func doLogin(_ sender: UIButton) {
        if validateCredentials(user: customView.userTextField.text ?? "", password: customView.passwordTextField.text ?? "") {
            print("Access granted")
//            performSegue(withIdentifier: "accessGrantedSegue", sender: nil)
//            accessGrantedSegueStoryboard()
            accessGrantedSegueXIB()
        } else {
            print("Access denied")
        }
    }
    
    
    
    private func accessGrantedSegueXIB() {
        let configuratonController = ConfigurationViewController(nibName: nil, bundle: nil)
        let navigationController = UINavigationController(rootViewController: configuratonController)
        navigationController.modalPresentationStyle = .fullScreen
        navigationController.navigationBar.prefersLargeTitles = true
        if let userName = customView.passwordTextField.text, !userName.isEmpty {
            configuratonController.navigationItem.title = "Welcome, \(userName)!"
        } else {
            configuratonController.navigationItem.title = "Welcome!"
        }
        present(navigationController, animated: true)
    }

    
}

