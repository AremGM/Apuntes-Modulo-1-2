//
//  MusicController.swift
//  AppMusicProgramatico
//
//  Created by Diplomado on 23/10/24.
//

import UIKit

class MusicViewController: UIViewController {

    
    var varApp: AppMusicModel!
    var tagMusic: Int = 0
    var songIndex: Int = 0
    
    var timer: Timer?
    var timer2:Timer?

    var albumIndex: Int = 0
    
    private var customView: MusicView{
        return view as! MusicView
    }
    
    
    override func loadView() {
        view = MusicView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .systemGreen
        customView.buttonPausePlay.setImage(UIImage(systemName: "play.circle"), for: .normal)
        customView.buttonPausePlay.tintColor = .systemPink
        customView.buttonBefore.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        customView.buttonBefore.tintColor = .systemPink
        customView.buttonNext.setImage(UIImage(systemName: "forward.fill"), for: .normal)
        customView.buttonNext.tintColor = .systemPink
        //Botones actions
        customView.buttonBefore.addAction(UIAction(handler: backSong(_:)), for: .touchUpInside)
        customView.buttonNext.addAction(UIAction(handler: nextSong(_:)), for: .touchUpInside)
        //customView.buttonBefore.isHidden = true
        //customView.buttonNext.isHidden = true
        customView.buttonPausePlay.addAction(UIAction(handler: pausaPlay(_:)), for: .touchUpInside)
        
        updateUI()
        startSliderTimer()
        startSliderTimer2()
    }
    
    
    
    func updateUI() {
        if albumIndex == 0{
            songs.removeAll()
            songs.append(contentsOf: [song0, song1, song2])
            //currentSong = songs[songIndex]
        }else if albumIndex == 1{
            songs.removeAll()
            songs.append(contentsOf: [song3, song4, song5])
            //currentSong = songs[songIndex]
        }else if albumIndex == 2{
            songs.removeAll()
            songs.append(contentsOf: [song6, song7, song8])
            //currentSong = songs[songIndex]
        }
        
        let currentSong = songs[songIndex]
        customView.labelNameSong.text = currentSong.title
        customView.labelNameArtist.text = currentSong.artist
        customView.imageMusic.image = UIImage(named: currentSong.album)
        customView.labeltimeMusic.text = currentSong.timeText
        customView.labeltimeMusicFinal.text = currentSong.timeText
        customView.sliderTime.value = 0
        customView.sliderTime.maximumValue = Float(currentSong.timeD ?? 0)
        //customView.sliderTime.minimumValue = Float(0)
        updateLabelWithSliderValue() // Para inicializar el tiempo
    }
    
    
    
    
     func backSong(_ sender: UIAction) {
         
        songIndex = (songIndex - 1 + songs.count) % songs.count
        updateUI()
    }

    func nextSong(_ sender: UIAction) {
        songIndex = (songIndex + 1) % songs.count
        updateUI()
    }

    func pausaPlay(_ sender: UIAction) {
        if customView.buttonPausePlay.isSelected {
            customView.buttonPausePlay.isSelected = false
            customView.buttonPausePlay.setImage(UIImage(systemName: "play.circle"), for: .normal)
            startSliderTimer()
            startSliderTimer2()
        } else {
            customView.buttonPausePlay.isSelected = true
            customView.buttonPausePlay.setImage(UIImage(systemName: "pause.circle"), for: .normal)
            print("Se detiene")
            timer?.invalidate()
            timer2?.invalidate()
        }
    }

    func startSliderTimer() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            if self.customView.sliderTime.value < self.customView.sliderTime.maximumValue {
                self.customView.sliderTime.value += 1
                self.updateLabelWithSliderValue()
            } else {
                self.timer?.invalidate()
            }
        }
    }
    
    
    func startSliderTimer2() {
        timer2 = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            guard let self = self else { return }
            if self.customView.sliderTime.maximumValue > self.customView.sliderTime.value {
                self.customView.sliderTime.maximumValue -= 1
                self.updateLabelWithSliderValue2()
            } else {
                self.timer2?.invalidate()
            }
        }
    }
    
    
    func updateLabelWithSliderValue2() {
        let totalSeconds = Int(customView.sliderTime.maximumValue)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        customView.labeltimeMusicFinal.text = String(format: "%d:%02d", minutes, seconds)
    }
    

    func updateLabelWithSliderValue() {
        let totalSeconds = Int(customView.sliderTime.value)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        customView.labeltimeMusic.text = String(format: "%d:%02d", minutes, seconds)
    }

    deinit {
        timer?.invalidate()
        timer2?.invalidate()
    }
}


