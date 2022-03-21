//
//  Person.swift
//  ContactList
//
//  Created by Евгения Шевцова on 21.03.2022.
//

import Foundation

struct Person {
    let name: String
    let surname: String
    let email: String
    let phone: String
    
    var title: String {
        "\(name) \(surname)"
    }
}


