//
//  ConfigurationViewController.swift
//  Fakestagram
//
//  Created by Grecia Escárcega on 27/09/24.
//

import UIKit

class ConfigurationViewController: UIViewController {
    
    @IBOutlet weak var customTextSwitch: UISwitch!
    @IBOutlet weak var imageTypeSwitch: UISwitch!
    @IBOutlet weak var captionSwitch: UISwitch!
    @IBOutlet weak var informationTextView: UITextView! {
        didSet {
            informationTextView.delegate = self
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        customTextSwitch.isOn = false
        setBarButtonGroup()
    }
    
    private func setBarButtonGroup() {
        let logoutButton = UIBarButtonItem(title: "Logout", image: UIImage(systemName: "multiply.circle.fill"), target: self, action: #selector(logout))
        let information = UIBarButtonItem(title: "Information", image: UIImage(systemName: "info.circle.fill"), target: self, action: #selector(openInfoView))
        self.navigationItem.centerItemGroups = [UIBarButtonItemGroup.fixedGroup(items: [information, logoutButton])]
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let picsController = segue.destination as? PicsViewController {
            picsController.imageType = imageTypeSwitch.isOn ? .dog : .cat
            picsController.showCaption = captionSwitch.isOn
        } else if let infoController = segue.destination as? InformationViewController {
            infoController.informationText = customTextSwitch.isOn ? informationTextView.text : nil
        }
    }
    
    @IBAction func openPics(_ sender: UIButton) {
        picsSegue()
    }
    
    @objc func logout(_ sender: UIBarButtonItem) {
        navigationController?.dismiss(animated: true)
    }
    
    @IBAction func switchChanged(_ sender: UISwitch) {
        if sender.tag != 0 {
            print("")
        } else if sender == customTextSwitch {
            informationTextView.isEditable = sender.isOn
        }
    }
    
    @objc func openInfoView(_ sender: UIBarButtonItem) {
        if customTextSwitch.isOn {
            if let text = informationTextView.text, !text.isEmpty {
                informationSegue()
            } else {
                presentAlertView("Add custom text please...")
            }
        } else {
            informationSegue()
        }
    }
    
    private func informationSegue() {
        let informationViewController = InformationViewController(nibName: nil, bundle: nil)
//        guard let informationViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "informationViewController") as? InformationViewController else { return }
        informationViewController.informationText = customTextSwitch.isOn ? informationTextView.text : nil
        present(informationViewController, animated: true)
    }
    
    private func picsSegue() {
//        guard let picsViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "picsViewController") as? PicsViewController else { return }
        let picsViewController = PicsViewController(nibName: "PicturesViewController", bundle: nil)
        picsViewController.imageType = imageTypeSwitch.isOn ? .dog : .cat
        picsViewController.showCaption = captionSwitch.isOn
        navigationController?.pushViewController(picsViewController, animated: true)
    }
    
    private func presentAlertView(_ string: String) {
        let alertController = UIAlertController(title: nil, message: string, preferredStyle: .alert)
        let alert = UIAlertAction(title: "OK", style: .cancel) { _ in
            print("bye bye alert")
        }
        alertController.addAction(alert)
        present(alertController, animated: true)
    }
    
}

extension ConfigurationViewController: UITextViewDelegate {
    func textView(_ textView: UITextView, shouldChangeTextIn range: NSRange, replacementText text: String) -> Bool {
        let allowedCharacterSet = CharacterSet.alphanumerics.union(CharacterSet.whitespacesAndNewlines)
        let maxCharacters = 150
        let currentCharacters = textView.text.count - range.length + text.count
        return text == "" || (CharacterSet(charactersIn: text).isSubset(of: allowedCharacterSet) && currentCharacters <= maxCharacters)
    }
}
