//
//  NetworkRequest.swift
//  iTunesApp
//
//  Created by David Kochkin on 28.08.2023.
//

import UIKit

class NetworkRequest {
    
    static let shared = NetworkRequest()
    
    private init() {}
    
    func requestDate(urlString: String, completion: @escaping (Result<Data, Error>) -> Void) {
        
        guard let url = URL(string: urlString) else { return }
        
        URLSession.shared.dataTask(with: url) { data, response, error in
            DispatchQueue.main.async {
                if let error = error {
                    completion(.failure(error))
                    return
                }
                guard let data = data else { return }
                completion(.success(data))
            }
        }
        .resume()
    }
}
