//
//  TabBarViewController.swift
//  ContactList
//
//  Created by Евгения Шевцова on 22.03.2022.
//

import UIKit

class TabBarViewController: UITabBarController {

    let persons = Person.getPersonsInfo()

    override func viewDidLoad() {
        super.viewDidLoad()
        setUpViewController(with: persons)
    }

    private func setUpViewController(with: [Person]) {
        guard let viewControllers = viewControllers else { return }

        for viewController in viewControllers {
            guard let navigationVC = viewController as? UINavigationController else { return }
            if let firstScreenVC = navigationVC.topViewController as? FirstScreenWithContactsViewController {
                firstScreenVC.persons = persons
            } else if let secondScreenVC = navigationVC.topViewController as? SecondScreenTableViewController {
                secondScreenVC.persons = persons
            }
        }
    }
}
