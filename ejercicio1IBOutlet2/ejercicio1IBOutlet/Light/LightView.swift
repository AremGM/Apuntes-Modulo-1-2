//
//  LightView.swift
//  ejercicio1IBOutlet
//
//  Created by Diplomado on 19/10/24.
//

import UIKit

class LightView: UIView {
    
    lazy var image1: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "lamp.table.fill")
        image.tintColor = .yellow
        image.contentMode = .scaleAspectFit
    
        return image
    }()
    
    lazy var image2: UIImageView = {
        let image = UIImageView()
        image.image = UIImage(systemName: "lamp.table.fill")
        image.tintColor = .blue
        image.contentMode = .scaleAspectFit
    
        return image
    }()
    
    
    lazy var buttonLight: UIButton = {
        let button = UIButton()
        var config = UIButton.Configuration.plain()
        config.cornerStyle = .large
        config.background.backgroundColor = .systemGreen
        config.baseForegroundColor = .black
        config.title = "Press"
        button.configuration = config
        return button
    }()
    
    
    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .systemBackground
        setMainStack()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var stackLight: UIStackView = {
        let stack = UIStackView()
        stack.translatesAutoresizingMaskIntoConstraints = false
        stack.axis = .vertical
        stack.spacing = 50
        stack.distribution = .fill
        stack.alignment = .fill
        stack.contentMode = .scaleAspectFit
        //stack.layoutMargins = UIEdgeInsets(top: 16, left: 50, bottom: 16, right: 50)
        //stack.isLayoutMarginsRelativeArrangement = true
        
        return stack
    }()
    
    

    
    
    private func setMainStack() {
        addSubview(stackLight)
        NSLayoutConstraint.activate([
            stackLight.heightAnchor.constraint(equalToConstant: 294),
            //stackLight.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            stackLight.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor, constant: 110),
            stackLight.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor, constant: -110),
            //stackLight.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor),
            stackLight.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor), // Centrar en Y
            stackLight.centerXAnchor.constraint(equalTo: safeAreaLayoutGuide.centerXAnchor),
        ])
        stackLight.addArrangedSubview(image1)
        stackLight.addArrangedSubview(buttonLight)
        stackLight.addArrangedSubview(image2)
        image1.heightAnchor.constraint(equalToConstant: 80).isActive = true
        image2.heightAnchor.constraint(equalToConstant: 80).isActive = true
        //buttonLight.heightAnchor.constraint(equalToConstant: 30).isActive = true
        //image1.heightAnchor.constraint(equalTo: image2.heightAnchor, multiplier: 1).isActive = true
        
    }
    
    
    private func addContainerView() {
        let centerY = containerView.centerYAnchor.constraint(equalTo: safeAreaLayoutGuide.centerYAnchor)
        centerY.priority = .defaultLow
        NSLayoutConstraint.activate([
            containerView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            containerView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            containerView.bottomAnchor.constraint(lessThanOrEqualTo: safeAreaLayoutGuide.bottomAnchor),
            containerView.topAnchor.constraint(greaterThanOrEqualTo: safeAreaLayoutGuide.topAnchor),
            centerY
        ])
    }
    
    
    
    
    
}
