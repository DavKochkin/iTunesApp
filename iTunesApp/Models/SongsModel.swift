//
//  SongsModel.swift
//  iTunesApp
//
//  Created by David Kochkin on 30.08.2023.
//

import UIKit

struct SongsModel: Decodable {
    let results: [Song]
}

struct Song: Decodable {
    let trackName: String?
}
