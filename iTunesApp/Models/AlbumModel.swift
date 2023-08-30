//
//  AlbumModel.swift
//  iTunesApp
//
//  Created by David Kochkin on 28.08.2023.
//

import UIKit


struct AlbumModel: Decodable, Equatable {
    let results: [Album]
}

struct Album: Decodable, Equatable {
    let artistName: String
    let collectionName: String
    let artworkUrl100: String?
    let trackCount: Int
    let releaseDate: String
}
