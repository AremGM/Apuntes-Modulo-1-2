//
//  ViewController.swift
//  ejercicio2IBOutlet
//
//  Created by Diplomado on 28/09/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

   // @IBOutlet weak var screen: UIImageView!
    @IBOutlet weak var red: UITextField!
    @IBOutlet weak var green: UITextField!
    @IBOutlet weak var blue: UITextField!
    
    
    @IBAction func enter(_ sender: UIButton) {
        
        let r = (red.text as? NSString)?.floatValue
        let g = (green.text as? NSString)?.floatValue
        let b = (blue.text as? NSString)?.floatValue
        
        let color = UIColor(red: CGFloat(r!/255), green: CGFloat(g!/255), blue: CGFloat(b!/255), alpha: 1)
        
        view.backgroundColor = color
        
    }
    
    @IBAction func reset(_ sender: UIButton) {
        view.backgroundColor = .white
    }
    
    
    
    
    
}

