//
//  ItemSelectViewController.swift


import UIKit

class ItemSelectViewController: UIViewController {
    
    @IBOutlet weak var captionedPic1: CaptionedPic!
    @IBOutlet weak var captionedPic2: CaptionedPic!
    @IBOutlet weak var captionedPic3: CaptionedPic!
    @IBOutlet weak var captionedPic4: CaptionedPic!
    @IBOutlet weak var captionedPic5: CaptionedPic!
    @IBOutlet weak var captionedPic6: CaptionedPic!
    @IBOutlet weak var captionedPic7: CaptionedPic!
    @IBOutlet weak var captionedPic8: CaptionedPic!
    @IBOutlet weak var captionedPic9: CaptionedPic!
    @IBOutlet weak var captionedPic10: CaptionedPic!

    var selectedWords: [String] {
        return [
            captionedPic1.list,
            captionedPic2.list,
            captionedPic3.list,
            captionedPic4.list,
            captionedPic5.list,
            captionedPic6.list,
            captionedPic7.list,
            captionedPic8.list,
            captionedPic9.list,
            captionedPic10.list
        ].flatMap { $0 }
    }


    override func viewDidLoad() {
        super.viewDidLoad()
        navigationItem.largeTitleDisplayMode = .never
        
        let images = [
            UIImage(named: "bread")!,
            UIImage(named: "egg")!,
            UIImage(named: "fish")!,
            UIImage(named: "meat")!,
            UIImage(named: "tortillas")!,
            UIImage(named: "oil")!,
            UIImage(named: "beer")!,
            UIImage(named: "tomatoe")!,
            UIImage(named: "limon")!,
            UIImage(named: "cafe")!
        ]


        setCells(images: images)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        navigationController?.isNavigationBarHidden = true
    }
    
    private func setCells(images:[UIImage]) {
        captionedPic1.configure(image: images[0], tag: 0)
        captionedPic2.configure(image: images[1], tag: 1)
        captionedPic3.configure(image: images[2], tag: 2)
        captionedPic4.configure(image: images[3], tag: 3)
        captionedPic5.configure(image: images[4], tag: 4)
        captionedPic6.configure(image: images[5], tag: 5)
        captionedPic7.configure(image: images[6], tag: 6)
        captionedPic8.configure(image: images[7], tag: 7)
        captionedPic9.configure(image: images[8], tag: 8)
        captionedPic10.configure(image: images[9], tag: 9)
      
    }


    @IBAction func finishSelection(_ sender: UIButton) {
        print("Access granted")
        accessGrantedSegueXIB()
        
    }


    private func accessGrantedSegueXIB() {
        let listItem = ListItemViewController(nibName: nil, bundle: nil) //Instancia de vista siguiente
        listItem.informationText = selectedWords
        navigationController?.modalPresentationStyle = .none
        navigationController?.navigationBar.prefersLargeTitles = true
        navigationController?.pushViewController(listItem, animated: true)
        
    }


}
