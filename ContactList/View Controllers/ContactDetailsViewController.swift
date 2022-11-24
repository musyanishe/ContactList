//
//  ContactDetailsViewController.swift
//  ContactList
//
//  Created by Евгения Шевцова on 22.03.2022.
//

import UIKit

class ContactDetailsViewController: UIViewController {

    @IBOutlet var nameOfPersonLabel: UILabel!
    @IBOutlet var phoneLabel: UILabel!
    @IBOutlet var emailLabel: UILabel!

    var person: Person!

    override func viewDidLoad() {
        super.viewDidLoad()
        nameOfPersonLabel.text = person.title
        phoneLabel.text = "Phone: \(person.phone)"
        emailLabel.text = "E-mail: \(person.email)"
    }

}
