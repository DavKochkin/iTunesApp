//
//  String+ Extension.swift
//  iTunesApp
//
//  Created by David Kochkin on 24.08.2023.
//

import UIKit

extension String {
    
    enum ValidTypes {
        case name
    }
    
    enum Regex: String {
        case name = "[a-zA-Z]{1,}"
    }
    
    func isValid(validType: ValidTypes) -> Bool {
        let format = "SELF MATCHES %@"
        var regex = ""
        
        
        switch validType {
        case .name: regex = Regex.name.rawValue
        }
        
        return NSPredicate(format: format, regex).evaluate(with: self)
    }
}
