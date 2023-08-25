//
//  UserModel.swift
//  iTunesApp
//
//  Created by David Kochkin on 25.08.2023.
//

import Foundation


struct User: Codable {
    let firstName: String
    let secondName: String
    let phone: String
    let email: String
    let password: String
    let age: Date
}
