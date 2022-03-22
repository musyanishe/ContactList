//
//  ViewController.swift
//  ContactList
//
//  Created by Евгения Шевцова on 21.03.2022.
//

import UIKit

class FirstScreenWithContactsViewController: UITableViewController {
    
    var persons: [Person] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    // MARK: - Table view data source
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        persons.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "ContactList", for: indexPath)

        let contact = persons[indexPath.row]
        var content = cell.defaultContentConfiguration()
        content.text = contact.title
        cell.contentConfiguration = content

        return cell
    }

    // MARK: - Navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        guard let contactDetailsVC = segue.destination as? ContactDetailsViewController else { return }
//        guard let indexPath = tableView.indexPathForSelectedRow else { return }
//        contactDetailsVC.title = sender as?
    }


}

