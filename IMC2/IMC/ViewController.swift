//
//  ViewController.swift
//  IMC
//
//  Created by Diplomado on 05/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   
    @IBOutlet weak var peso: UITextField!
    @IBOutlet weak var altura: UITextField!
    
    @IBAction func calcularIMC(_ sender: UITextField) {
        
        if let pesoF = peso.text, !pesoF.isEmpty, let alturaF = altura.text, !alturaF.isEmpty {
            print("Access granted")
            performSegue(withIdentifier: "screen2", sender: nil)
        } else {
            print("Access denied")
            showAlert(title: "Error", message: "Ingresa algun número")
        }
    }
    
    
    private func showAlert(title: String, message: String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alert.addAction(UIAlertAction(title: "Aceptar", style: .default))
        present(alert, animated: true, completion: nil)
    }
    
}

