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
        
    }
    
    private func setUpViewController(with: [Person]) {
        guard let viewControllers = self.viewControllers else { return }
        
        viewControllers.forEach{
            if let navigationVC = $0 as? UINavigationController {
                guard let firstScreenVC = navigationVC.topViewController as? FirstScreenWithContactsViewController else { return }
                    firstScreenVC.persons = persons
                } else if let secondScreenVC = $0 as? SecondScreenTableViewController {
                    secondScreenVC.persons = persons
                }
            }
        }
    }

