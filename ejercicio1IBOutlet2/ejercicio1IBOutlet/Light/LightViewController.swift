//
//  LightViewController.swift
//  ejercicio1IBOutlet
//
//  Created by Diplomado on 19/10/24.
//

import UIKit

class LightViewController: UIViewController {
    
    private var isOn = false
    
    private var customView: LightView {
        return view as! LightView
    }
    
    override func loadView() {
        view = LightView()
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .black
        customView.image1.tintColor = .black
        customView.image2.tintColor = .black
        customView.buttonLight.addAction(UIAction(handler: onOff(_:)), for: .touchUpInside)
    }
    

    func onOff(_ sender: UIAction){
        isOn.toggle()
        
        if isOn{
            view.backgroundColor = .white
            customView.image1.tintColor = .yellow
            customView.image2.tintColor = .white
        }else {
            view.backgroundColor = .black
            customView.image1.tintColor = .black
            customView.image2.tintColor = .blue
            
        }
    }

}
