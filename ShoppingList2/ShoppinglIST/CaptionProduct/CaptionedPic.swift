//
//  CaptionedPic.swift
//

import UIKit

class CaptionedPic: UIView {
    @IBOutlet private weak var imageView: UIImageView!
    @IBOutlet private weak var selectButton: UIButton!

    override init(frame: CGRect) {
        super.init(frame: frame)
        setViewBundleInit()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        setViewBundleInit()
    }

    var list: [String] = []

    func configure(image: UIImage, tag: Int) {
        imageView.image = image
        selectButton.tag = tag
        updateButtonAppearance()
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



    private func updateButtonAppearance() {
        // Color del botón
        selectButton.backgroundColor = selectButton.isSelected ? .green : .blue
        
        if selectButton.isSelected {
            selectButton.setImage(UIImage(systemName: "checkmark"), for: .normal)
            selectButton.tintColor = .black
        } else {
            selectButton.setImage(UIImage(systemName: "cart.fill"), for: .normal)
            selectButton.tintColor = .white
        }
    }

    private func tagWord (tag: Int) {
        
        let wordArray = ["bread", "egg", "fish", "meat", "tortillas", "oil", "beer", "tomatoe", "limon", "cafe"]
        
        guard tag >= 0 && tag < wordArray.count else { return }
        let selectedWord = wordArray[tag]
        
        if !list.contains(selectedWord) {
            list.append(selectedWord)
        } else if let index = list.firstIndex(of: selectedWord) {
            list.remove(at: index)
        }
        
        
    }


    @IBAction private func buttonPressed(_ sender: UIButton) {
        sender.isSelected.toggle() 
        updateButtonAppearance()
        tagWord(tag: sender.tag)
    }



}
