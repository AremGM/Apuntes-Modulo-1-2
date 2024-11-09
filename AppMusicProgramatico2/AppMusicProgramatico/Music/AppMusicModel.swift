import Foundation
import UIKit

struct AppMusicModel {
    var title: String
    var artist: String
    var album: String
    var timeD: TimeInterval
    var timeText: String
}

let song0 = AppMusicModel(title: "Nada Personal", artist: "Soda Stereo", album: "NadaPersonal", timeD: 294, timeText: "4:54") //4:09
let song1 = AppMusicModel(title: "Juegos de seducción", artist: "Soda Stereo", album:  "NadaPersonal", timeD: 200, timeText: "3:20") // 3:52
let song2 = AppMusicModel(title: "Cuando pase el temblor", artist: "NSoda Stereo", album:  "NadaPersonal", timeD: 230, timeText: "3:50") //4:01

let song3 = AppMusicModel(title: "Persiana Americana", artist: "Soda Stereo", album:  "signos", timeD: 293, timeText: "4:53") //4:09
let song4 = AppMusicModel(title: "Profugos", artist: "Soda Stereo", album:  "signos", timeD: 320, timeText: "5:20") // 3:52
let song5 = AppMusicModel(title: "El Rito", artist: "Soda Stereo", album:  "signos", timeD: 366, timeText: "6:06") //4:01


let song6 = AppMusicModel(title: "Sobredosis de T.V.", artist: "Soda Stereo", album:  "SodaStereo", timeD: 251, timeText: "4:11") //4:09
let song7 = AppMusicModel(title: "Tratame suavemente", artist: "Soda Stereo", album:  "SodaStereo", timeD: 203, timeText: "3:23") // 3:52
let song8 = AppMusicModel(title: "El timepo es dinero", artist: "Soda Stereo", album:  "SodaStereo", timeD: 178, timeText: "2:58") //4:01


var songs: [AppMusicModel] = []

//let songs: [AppMusicModel] = [song0, song1, song2, song3, song4, song5, song6, song7, song8]
