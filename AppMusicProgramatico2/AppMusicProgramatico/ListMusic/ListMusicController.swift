import UIKit

class ListMusicController: UIViewController, TagButtonViewSong{
    
    var tagAlbum: Int?
    
    
    
    var tagSong = 0
    private var customView: ListMusicView{
        return view as! ListMusicView
    }
    
    
    var arrayHumbe = (nameArtist: "Soda Stereo",
                      nameImage: "NadaPersonal",
                      nameAlbum: "Album: Nada Personal",
                      namePhotoMusic1: "NadaPersonal",
                      nameButtonMusic1: "Nada Personal",
                      namePhotoMusic2: "NadaPersonal",
                      nameButtonMusic2: "Juegos de Seducción",
                      namePhotoMusic3: "NadaPersonal",
                      nameButtonMusic3: "Cuando pase el temblor"
    )
    
    var arrayLatin = (nameArtist: "Soda Stereo",
                      nameImage: "signos",
                      nameAlbum: "Signos",
                      namePhotoMusic1: "signos",
                      nameButtonMusic1: "Persiana americana",
                      namePhotoMusic2: "signos",
                      nameButtonMusic2: "Profugos",
                      namePhotoMusic3: "signos",
                      nameButtonMusic3: "El grito"
    )
    
    
    var arrayLana = (nameArtist: "Soda Stereo",
                     nameImage: "SodaStereo",
                     nameAlbum: "Soda Stereo",
                     namePhotoMusic1: "SodaStereo",
                     nameButtonMusic1: "Sobredosis de T.V",
                     namePhotoMusic2: "SodaStereo",
                     nameButtonMusic2: "Tratame suavement",
                     namePhotoMusic3: "SodaStereo",
                     nameButtonMusic3: "El tiempo es dinero"
    )
    
    
    
    
    override func loadView() {
        view = ListMusicView() // Asignar la vista principal
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("ListMusicController: \(tagAlbum ?? 3)")
        view.backgroundColor = .systemGreen
        
        customView.tagSongDelegate = self
        
        // Usar customView para establecer los datos
        switch tagAlbum {
        case 0:
            //Aqui se se esta pasando por completo la tupla, ya que en el setMainStack es lo que recibe
            customView.setMainStack(arrayAlbum: arrayHumbe)
            
        case 1:
            customView.setMainStack(arrayAlbum: arrayLatin)
        case 2:
            customView.setMainStack(arrayAlbum: arrayLana)
        default:
            print("Error pantalla")
        }
        
        
    }
    
    
    func pressButtonSong(tag: Int) {
        print("Tag del boton: \(tag)")
        tagSong = tag
        accessGrantedSegueXIB(tag: tagSong)
    }
    
    
        private func accessGrantedSegueXIB(tag: Int) {
            let listItem = MusicViewController(nibName: nil, bundle: nil)
            listItem.songIndex = tag
            listItem.albumIndex = tagAlbum ?? 0
            print(listItem.songIndex)
            navigationController?.modalPresentationStyle = .none
            navigationController?.navigationBar.prefersLargeTitles = true
            //navigationController?.navigationBar.isTranslucent = false
            navigationController?.pushViewController(listItem, animated: true)
    
            }
    
    
    
    
}
