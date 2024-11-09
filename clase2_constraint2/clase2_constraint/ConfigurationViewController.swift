//
//  ConfigurationViewController.swift
//  clase2_constraint
//
//  Created by Diplomado on 27/09/24.
//

import UIKit

class ConfigurationViewController: UIViewController {

    override func viewDidLoad (){
        super.viewDidLoad()
        
    }
    
    
    @IBAction func openPics (_ sender: UIButton){
        performSegue(withIdentifier: "acees", sender: nil)
    }
    
}
