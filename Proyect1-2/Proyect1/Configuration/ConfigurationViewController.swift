//
//  ViewController.swift
//  Proyect1
//
//  Created by Diplomado on 25/10/24.
//

import UIKit

class ConfigurationViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        sliderRounds.value = 0
        continueButton.isHidden = true
        textUser.addTarget(self, action: #selector(appearContinue), for: .editingChanged)
        textWin.addTarget(self, action: #selector(appearContinue), for: .editingChanged)
        textLose.addTarget(self, action: #selector(appearContinue), for: .editingChanged)
        textPoints.addTarget(self, action: #selector(appearContinue), for: .editingChanged)
        //textUser.text = "Hola"
        //continueButton.isHidden = true
        //validateDatas(userName: textUser.text ?? "", winPoint: textWin.text ?? "", losePoint: textLose.text ?? "", winnerPoint: textPoints.text ?? "")
        // Do any additional setup after loading the view.
    }
    
   

    var user: String!
    
    //TextField
    @IBOutlet weak var textUser: UITextField!
    @IBOutlet weak var textWin: UITextField!
    @IBOutlet weak var textLose: UITextField!
    @IBOutlet weak var textPoints: UITextField!
    
    @IBOutlet weak var stackSlider: UIStackView!
    
    @IBOutlet weak var stackPoints: UIStackView!
    
    @IBOutlet weak var sliderRounds: UISlider!
    
    @IBOutlet weak var continueButton: UIButton!
    
    
    private func validateDatas(userName: String, winPoint: String, losePoint: String, winnerPoint: String) -> Bool {
        if userName == "" || winPoint == "" || losePoint == "" || winnerPoint == "" {
            return true
        }else {
            return false
        }
    }
    
    @IBAction func buttonRounds(_ sender: UIButton) {
        sender.isSelected.toggle()
        user = textUser.text
        if sender.isSelected{
            stackPoints.isHidden = true
        }else{
            stackPoints.isHidden = false
        }
        
    }
    
    
    

    @IBAction func buttonPoints(_ sender: UIButton) {
        sender.isSelected.toggle()
        user = textUser.text
        if sender.isSelected{
            stackSlider.isHidden = true
        }else{
            stackSlider.isHidden = false
        }
        
    }
    
    @IBAction func moveSlider(_ sender: UISlider) {
        
    }
    
    
    
    @objc func appearContinue (){
        if stackSlider.isHidden == true{
            if user.isEmpty, let text2 = textWin.text, !text2.isEmpty, let text3 = textLose.text, !text3.isEmpty, let text4 = textPoints.text, !text4.isEmpty{
                continueButton.isHidden = false
            }else{
                continueButton.isHidden = true
            }
        }else if stackPoints.isHidden == true {
            if user.isEmpty{
                continueButton.isHidden = false
            }else{
                continueButton.isHidden = true
            }
        }
    }
    
    
    
    @IBAction func continueGame(_ sender: UIButton) {
        if validateDatas(userName: textUser.text ?? "", winPoint: textWin.text ?? "", losePoint: textLose.text ?? "", winnerPoint: textPoints.text ?? ""){
            print("No hay datos")
        }else{
            print("Datos Completos")
            continueButton.isHidden = false
        }
    }
    
    
    
    
    
    
}

