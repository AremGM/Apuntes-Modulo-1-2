import UIKit

class ListItemViewController: UIViewController {
    
    @IBOutlet weak var infoTextView: UILabel!
    var informationText: [String] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        navigationController?.isNavigationBarHidden = false

        infoTextView.text = informationText.reduce("") { $0.isEmpty ? $1 : "\($0), \($1)" }
        
    }
   
}
