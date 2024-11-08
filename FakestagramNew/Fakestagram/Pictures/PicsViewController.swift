//
//  PicsViewController.swift
//  Fakestagram
//
//  Created by Grecia Escárcega on 04/10/24.
//

import UIKit

class PicsViewController: UIViewController {
    
    @IBOutlet weak var captionedPic1: CaptionedPic!
    @IBOutlet weak var captionedPic2: CaptionedPic!
    @IBOutlet weak var captionedPic3: CaptionedPic!
    
    var showCaption: Bool = false
    var imageType: PictureType = .dog

    override func viewDidLoad() {
        super.viewDidLoad()
        print(showCaption)
        print(imageType)
        navigationItem.largeTitleDisplayMode = .never
        setCells()
    }
    
    private func setCells() {
        captionedPic1.model = imageType.captionedImages[0]
        captionedPic1.hideCaption = !showCaption
        captionedPic2.model = imageType.captionedImages[1]
        captionedPic2.hideCaption = !showCaption
        captionedPic3.model = imageType.captionedImages[2]
        captionedPic3.hideCaption = !showCaption
    }
}
