//
//  PictureType.swift
//  Fakestagram
//
//  Created by Grecia Escárcega on 27/09/24.
//

import Foundation
import UIKit

enum PictureType {
    case dog, cat
    
    var captionedImages: [CaptionedPicModel] {
        switch self {
        case .dog:
            return [
                CaptionedPicModel(image: UIImage.dog1, caption: "first dog"),
                CaptionedPicModel(image: UIImage(named: "dog-2") ?? UIImage(), caption: "second dog"),
                CaptionedPicModel(image: UIImage.dog3, caption: "third dog")]
        case .cat:
            return [
                CaptionedPicModel(image: UIImage(resource: .cat1), caption: "first cat"),
                CaptionedPicModel(image: UIImage.cat2, caption: "second cat"),
                CaptionedPicModel(image: UIImage.cat3, caption: "third cat")]
        }
    }
}
