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

    static func getPersonsInfo() -> [Person] {

        var persons: [Person] = []

        let names = DataManager.dataManager.names.shuffled()
        let surnames = DataManager.dataManager.surnames.shuffled()
        let emails = DataManager.dataManager.emails.shuffled()
        let phones = DataManager.dataManager.phoneNumbers.shuffled()
        let personInfo = min(names.count, surnames.count, emails.count, phones.count)

        for index in 0..<personInfo {
        let person = Person(
            name: names[index],
            surname: surnames[index],
            email: emails[index],
            phone: phones[index]
        )
            persons.append(person)
        }
        return persons
    }

}
