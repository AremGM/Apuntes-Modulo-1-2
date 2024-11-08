//
//  CaptionedPic.swift
//  Fakestagram
//
//  Created by Grecia Escárcega on 11/10/24.
//

import UIKit

class CaptionedPic: UIView {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var captionLabel: UILabel!
    
    var model: CaptionedPicModel! {
        didSet {
            imageView.image = model.image
            captionLabel.text = model.caption
        }
    }
    var hideCaption: Bool = false {
        didSet {
            captionLabel.isHidden = hideCaption
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setViewBundleInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViewBundleInit()
    }
    
    // Modo 1
    private func setViewBundleInit() {
        guard let contentView = Bundle.main.loadNibNamed("CaptionedPic", owner: self)?.first as? UIView else { return }
        addSubview(contentView)
        contentView.translatesAutoresizingMaskIntoConstraints = false
        contentView.topAnchor.constraint(equalTo: topAnchor).isActive = true
        contentView.bottomAnchor.constraint(equalTo: bottomAnchor).isActive = true
        contentView.leftAnchor.constraint(equalTo: leftAnchor).isActive = true
        contentView.rightAnchor.constraint(equalTo: rightAnchor).isActive = true
    }
}
