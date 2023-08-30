//
//  NetworkDataFetch.swift
//  iTunesApp
//
//  Created by David Kochkin on 28.08.2023.
//

import UIKit

class NetworkDataFetch {
     
    static let shared = NetworkDataFetch()
    
    private init() {}
    
    func fetchAlbum(urlString: String, response: @escaping (AlbumModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestDate(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(AlbumModel.self, from: data)
                    response(albums, nil)
                } catch let jsonError {
                    print("Fail to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error received requesting data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
    
    func fetchSongs(urlString: String, response: @escaping (SongsModel?, Error?) -> Void) {
        
        NetworkRequest.shared.requestDate(urlString: urlString) { result in
            switch result {
            case .success(let data):
                do {
                    let albums = try JSONDecoder().decode(SongsModel.self, from: data)
                    response(albums, nil)
                } catch let jsonError {
                    print("Fail to decode JSON", jsonError)
                }
            case .failure(let error):
                print("Error received requesting data: \(error.localizedDescription)")
                response(nil, error)
            }
        }
    }
}
