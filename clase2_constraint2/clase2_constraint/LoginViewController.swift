//
//  ViewController.swift
//  clase2_constraint
//
//  Created by Diplomado on 27/09/24.
//

import UIKit

class LoginViewController: UIViewController {
    
    //Para conectar y modificar
    @IBOutlet weak var userTextField: UITextField!

    @IBOutlet weak var passwordTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        userTextField.text = ""
        print("view did load")
        // Do any additional setup after loading the view.
    }
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewDidLoad()
        print("view did load")
    }

    override func viewDidAppear(_ animated: Bool) {
        print("view will appaer")
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        print("view will disappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        print("view did disappear")
    }

    private func validateCredentials (user: String, password: String) -> Bool {
        return user == "a" && password == "a"
    }
    
    //Esta ligado a funciones
    @IBAction func doLogin(_ sender: UIButton){
        if validateCredentials(user: userTextField.text ?? "", password: passwordTextField.text ?? ""){
            print("Acces granted")
            performSegue(withIdentifier: "accesbreak", sender: nil)
        }else {
            print("Acces denegated")
        }
    }
    
    
}

