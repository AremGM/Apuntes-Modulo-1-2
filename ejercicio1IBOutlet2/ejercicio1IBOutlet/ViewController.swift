//
//  ViewController.swift
//  ejercicio1IBOutlet
//
//  Created by Diplomado on 28/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = off
        light.tintColor = .black
        noLight.tintColor = .black
        // Do any additional setup after loading the view.
    }

    

    @IBOutlet weak var light: UIImageView!
    
    @IBOutlet weak var noLight: UIImageView!
    //@IBOutlet weak var screen: UIImageView!
    
    private let off = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
    private let on = UIColor(red: 1, green: 1, blue: 1, alpha: 1)
    private var isOn = false
    
    
    
    
    
    @IBAction func doLogin(_ sender: UIButton) {
        isOn.toggle()
        
        if isOn{
            view.backgroundColor = on
            light.tintColor = .yellow
            noLight.tintColor = .white
        }else {
            view.backgroundColor = off
            light.tintColor = .black
            noLight.tintColor = .blue
            
        }
    }
    
    
}

