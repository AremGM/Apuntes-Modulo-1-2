import Foundation
import UIKit

struct AppMusicModel {
    var title: String?
    var artist: String?
    var album: UIImage?
    var timeD: TimeInterval?
    var timeText: String?
}

let song0 = AppMusicModel(title: "Metal Militia", artist: "Metallica", album: UIImage(named: "metallica"), timeD: 311, timeText: "5:11")
let song1 = AppMusicModel(title: "Persiana Americana", artist: "Soda Stereo", album: UIImage(named: "sodastereo"), timeD: 295, timeText: "4:55")
let song2 = AppMusicModel(title: "Missippi Queen", artist: "Mountain", album: UIImage(named: "mountain"), timeD: 150, timeText: "2:30")

