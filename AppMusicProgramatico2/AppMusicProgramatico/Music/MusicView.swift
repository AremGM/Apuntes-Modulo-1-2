//
//  Music.swift
//  AppMusicProgramatico
//
//  Created by Diplomado on 23/10/24.
//

import UIKit

class MusicView: UIView {
    
    //Imagen de la cancion
    // Crear la imagen
    var infoSong: AppMusicModel!
    
    lazy var imageMusic: UIImageView = {
        let imageView = UIImageView()
        //imageView.image = UIImage(named: infoSong.album)
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        //        imageView.widthAnchor.constraint(equalToConstant: 100 ).isActive = true
        imageView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        return imageView
    }()
    
    
    lazy var labelNameSong: UILabel = {
        let labelNSong = UILabel()
        //labelNSong.text = infoSong.
        labelNSong.textAlignment = .center
        labelNSong.font = UIFont.italicSystemFont(ofSize: 20)
        labelNSong.setContentCompressionResistancePriority(.required, for: .vertical)
        //label.widthAnchor.constraint(equalToConstant: 10).isActive = true
        labelNSong.heightAnchor.constraint(equalToConstant: 10).isActive = true
        return labelNSong
    }()
    
   
    
    lazy var labelNameArtist: UILabel = {
        let labelNArtist = UILabel()
        labelNArtist.setContentCompressionResistancePriority(.required, for: .vertical)
        labelNArtist.translatesAutoresizingMaskIntoConstraints = false
        //labelNArtist.text = infoSong.artist
        labelNArtist.textAlignment = .center
        labelNArtist.font = UIFont.boldSystemFont(ofSize: 15)
        labelNArtist.heightAnchor.constraint(equalToConstant: 15).isActive = true
        return labelNArtist
    }()
    
    
    
    
    lazy var labeltimeMusic: UILabel = {
        let labelTMusic = UILabel()
        labelTMusic.text = "0:00"
        return labelTMusic
    }()
    
    lazy var labeltimeMusicFinal: UILabel = {
        let labelTMFinal = UILabel()
        //labelTMFinal.text = infoSong.timeText
        return labelTMFinal
    }()
    
    lazy var buttonBefore: UIButton =  UIButton()
    
    lazy var buttonPausePlay: UIButton = UIButton()
    
    lazy var buttonNext: UIButton =  UIButton()
        
   
    lazy var sliderTime: UISlider = {
        let sliderT = UISlider()
        sliderT.widthAnchor.constraint(equalToConstant: 380).isActive = true
        return sliderT
    }()
    

    lazy var containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)
        backgroundColor = .white
        setMainStack()
//        setMainStack(arrayAlbum: (nameArtist, nameImage, nameAlbum, namePhotoMusic1, nameButtonMusic1, namePhotoMusic2, nameButtonMusic2, namePhotoMusic3, nameButtonMusic3))
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    
    lazy var mainStack: UIStackView = {
       let stackView = UIStackView()
       stackView.translatesAutoresizingMaskIntoConstraints = false
       stackView.axis = .vertical
        stackView.distribution = .equalSpacing
        stackView.alignment = .center
       stackView.spacing = 0
         
       //stackView.backgroundColor = UIColor(red: 230/255, green: 230/255, blue: 250/255, alpha: 1)
        
       //stackView.heightAnchor.constraint(equalToConstant: 50).isActive = true
        stackView.layoutMargins = UIEdgeInsets(top: 20, left: 40, bottom: 200, right: 40)
        //stackView.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 20).isActive = true
//        stackView.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor).isActive = true
//        stackView.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor).isActive = true
        stackView.isLayoutMarginsRelativeArrangement = true
       return stackView
   }()
    

    func setMainStack() {
        
        // Limpiar el stack antes de agregar nuevos elementos
        mainStack.arrangedSubviews.forEach { $0.removeFromSuperview() }
        
        addSubview(mainStack)

        //let imageAndLabel1 = createStack(imageName: "albumHumbe", labelNameArtist: "HUMBE", labelNameSong: "Ultimamente")
        

        
        // Agregar los stacks al stack principal
        mainStack.addArrangedSubview(createStackNameAlbumImage())
        mainStack.addArrangedSubview(imageMusic)
        mainStack.addArrangedSubview(createStackVertical())

        // Establecer restricciones del stack principal
        NSLayoutConstraint.activate([
            mainStack.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor),
            mainStack.leadingAnchor.constraint(equalTo: safeAreaLayoutGuide.leadingAnchor),
            mainStack.trailingAnchor.constraint(equalTo: safeAreaLayoutGuide.trailingAnchor),
            mainStack.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor)
        ])
    }

    
    
    private func createStackNameAlbumImage() -> UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.heightAnchor.constraint(equalToConstant: 90).isActive = true
        //stack.backgroundColor = UIColor(red: 220/255, green: 200/255, blue: 255/255, alpha: 1)

        
        // Añadir la imagen y el label al stack horizontal
        stack.addArrangedSubview(labelNameSong)
        stack.addArrangedSubview(labelNameArtist)
        //stack.addArrangedSubview(imageMusic)
        
        return stack
    }
    
    private func createStackVertical() -> UIStackView {
        let stack = UIStackView()
        stack.axis = .vertical
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.heightAnchor.constraint(equalToConstant: 90).isActive = true
        //stack.backgroundColor = UIColor(red: 220/255, green: 200/255, blue: 255/255, alpha: 1)

        
        // Añadir la imagen y el label al stack horizontal
        stack.addArrangedSubview(createStackButtons())
        stack.addArrangedSubview(sliderTime)
        stack.addArrangedSubview(createStackButtonsLabelTimes())
        
        return stack
    }
    
    
    private func createStackButtonsLabelTimes() -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .equalSpacing
        stack.spacing = 5
        stack.heightAnchor.constraint(equalToConstant: 90).isActive = true
        //stack.backgroundColor = UIColor(red: 220/255, green: 200/255, blue: 255/255, alpha: 1)

        
        // Añadir la imagen y el label al stack horizontal
        stack.addArrangedSubview(labeltimeMusic)
        stack.addArrangedSubview(labeltimeMusicFinal)
        
        
        return stack
    }
    
    
    
    
    private func createStackButtons() -> UIStackView {
        let stack = UIStackView()
        stack.axis = .horizontal
        stack.distribution = .fillEqually
        stack.spacing = 5
        stack.heightAnchor.constraint(equalToConstant: 90).isActive = true
        //stack.backgroundColor = UIColor(red: 220/255, green: 200/255, blue: 255/255, alpha: 1)

        
        // Añadir la imagen y el label al stack horizontal
        stack.addArrangedSubview(buttonBefore)
        stack.addArrangedSubview(buttonPausePlay)
        stack.addArrangedSubview(buttonNext)
        
        return stack
    }

    
    
    
    
    
    
}
