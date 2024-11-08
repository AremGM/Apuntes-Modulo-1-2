//
//  LoginView.swift
//  Fakestagram
//
//  Created by Diplomado on 18/10/24.
//

import UIKit

class LoginView: UIView {
    //lazy no va a estar colocado
    lazy var userLabel: UILabel = { //Configuraciones del label
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "User"
        return label
    }() //Una funcion que se ejecuta una vez
    
    lazy var passwordLabel: UILabel = { //Configuraciones del label
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "Password"
        return label
    }() //Una funcion que se ejecuta una vez
    
    lazy var userTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "User name" //texto para indicaciones
        return textField
    }()
    
    lazy var passwordTextField: UITextField = {
        let textField = UITextField()
        textField.translatesAutoresizingMaskIntoConstraints = false
        textField.placeholder = "User name" //texto para indicaciones
        return textField
    }()
    
    lazy var loginButton: UIButton = {
        let button = UIButton()
        button.setTitle("login", for: .normal)
        return  button
    }()
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.backgroundColor = .systemBlue
        view.translatesAutoresizingMaskIntoConstraints = false //Para usar contraint (stacks true)
        return view
    }()
    
    //init va con required
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground  //Funciona para darkmode
        //addSubview(containerView)
        addContainerView()
        addUserNameLabel()
        addUserTextField()
        addPasswordLabel()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
        
    }
    
    private func addContainerView(){
        addSubview(containerView)
        let centerY = containerView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        centerY.priority = .defaultLow
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            safeAreaLayoutGuide.bottomAnchor.constraint(greaterThanOrEqualTo: containerView.bottomAnchor, constant: 8),
            //containerView.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor, constant: -8),
            containerView.topAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.topAnchor, constant: 8),
            centerY
            
        ])
    }
    
    private func addUserNameLabel(){
        containerView.addSubview(userLabel)
        userLabel.topAnchor.constraint(equalTo: containerView.topAnchor).isActive = true
//        userLabel.bottomAnchor.constraint(equalTo: userTextField.topAnchor, constant: 8).isActive = true
        
    }
    
    
    private func addUserTextField(){
        containerView.addSubview(userTextField)
        userTextField.topAnchor.constraint(equalTo: userLabel.bottomAnchor, constant: 8).isActive = true
        userTextField.widthAnchor.constraint(equalToConstant: 50).isActive = true
        userTextField.heightAnchor.constraint(equalToConstant: 50).isActive = true
        //userTextField.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }
    
    
    private func addPasswordLabel(){
        containerView.addSubview(passwordLabel)
        passwordLabel.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 32).isActive = true
        //passwordLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }

    private func addPasswordTextLabel(){
        containerView.addSubview(passwordLabel)
        passwordTextField.topAnchor.constraint(equalTo: userTextField.bottomAnchor, constant: 32).isActive = true
        passwordLabel.bottomAnchor.constraint(equalTo: containerView.bottomAnchor).isActive = true
    }
    
    
}
