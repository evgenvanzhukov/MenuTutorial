//
//  MenuModel.swift
//  MenuTutorial
//
//  Created by Evgen on 08.01.2023.
//

import Foundation

enum MenuModel: Int, CustomStringConvertible {
    
    case Home
    case Contacts
    case Messages
    case Settings
    
    var description: String {
        switch self {
            case .Home: return "Home"
            case .Contacts: return "Contacts"
            case .Messages: return "Messages"
            case .Settings: return "Settings"
        }
    }
}
