//
//  CaratulaViewController.swift


import UIKit

class CaratulaViewController: UIViewController {

    @IBOutlet weak var titleMusic: UILabel!
    @IBOutlet weak var artistMusic: UILabel!
    @IBOutlet weak var albumMusic: UIImageView!
    @IBOutlet weak var timeMusic: UILabel!
    @IBOutlet weak var timeMusicFinal: UILabel!
    @IBOutlet weak var sliderTime: UISlider!
    @IBOutlet weak var playPause: UIButton!
    @IBOutlet weak var backSong: UIButton!
    @IBOutlet weak var nextSong: UIButton!

    var songIndex: Int = 0
    var timer: Timer?

    // Arreglo de canciones
    let songs: [AppMusicModel] = [song0, song1, song2]

    override func viewDidLoad() {
        super.viewDidLoad()
        playPause.setImage(UIImage(systemName: "play.circle"), for: .normal)
        playPause.tintColor = .black
        backSong.setImage(UIImage(systemName: "backward.fill"), for: .normal)
        backSong.tintColor = .black
        nextSong.setImage(UIImage(systemName: "forward.fill"), for: .normal)
        nextSong.tintColor = .black
        updateInfo()
        startSlider()
    }

    func updateInfo() {
        let currentSong = songs[songIndex]
        titleMusic.text = currentSong.title
        artistMusic.text = currentSong.artist
        albumMusic.image = currentSong.album
        timeMusicFinal.text = currentSong.timeText
        sliderTime.value = 0
        sliderTime.maximumValue = Float(currentSong.timeD ?? 0)
        updateLabels() // Para inicializar el tiempo
    }

    @IBAction func backSong(_ sender: UIButton) {
        songIndex = (songIndex - 1 + songs.count) % songs.count
        updateInfo()
    }

    @IBAction func nextSong(_ sender: UIButton) {
        songIndex = (songIndex + 1) % songs.count
        updateInfo()
    }

    @IBAction func pausaPlay(_ sender: UIButton) {
        if sender.isSelected {
            sender.isSelected = false
            sender.setImage(UIImage(systemName: "play.circle"), for: .normal)
            startSlider()
        } else {
            sender.isSelected = true
            sender.setImage(UIImage(systemName: "pause.circle"), for: .normal)
            print("Se detiene")
            timer?.invalidate()
        }
    }

    func startSlider() {
        timer = Timer.scheduledTimer(withTimeInterval: 1, repeats: true) { [weak self] _ in
            //Desempaquetado seguro
            guard let self = self else { return }
            if self.sliderTime.value < self.sliderTime.maximumValue {
                self.sliderTime.value += 1
                self.updateLabels()
            } else {
                self.timer?.invalidate()
            }
        }
    }

    func updateLabels() {
        //print(sliderTime.value)
        //print(sliderTime.maximumValue)
        let totalSeconds = Int(sliderTime.value)
        let minutes = totalSeconds / 60
        let seconds = totalSeconds % 60
        timeMusic.text = String(format: "%d:%02d", minutes, seconds)
    }

    deinit {
        timer?.invalidate()
    }
}
