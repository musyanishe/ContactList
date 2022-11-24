//
//  SecondScreenTableViewController.swift
//  ContactList
//
//  Created by Евгения Шевцова on 21.03.2022.
//

import UIKit

class SecondScreenTableViewController: UITableViewController {

    var persons: [Person] = []

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        persons.count
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       2
    }

    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        persons[section].title
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "contacts", for: indexPath)

        let person = persons[indexPath.section]
        var content = cell.defaultContentConfiguration()

        if indexPath.row == 0 {
            content.text = person.phone
            content.image = UIImage(systemName: "phone")
        } else {
            content.text = person.email
            content.image = UIImage(systemName: "mail")
        }

        cell.contentConfiguration = content
        return cell
    }

}
