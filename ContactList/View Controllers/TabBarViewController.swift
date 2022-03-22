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
        
        viewControllers.forEach{
            if let navigationVC = $0 as? UINavigationController {
                guard let firstScreenVC = navigationVC.topViewController as? FirstScreenWithContactsViewController else { return }
                    firstScreenVC.persons = persons
            } else if let secondNavigationVC = $0 as? UINavigationController {
                guard let  secondScreenVC = secondNavigationVC.topViewController as? SecondScreenTableViewController else { return }
                    secondScreenVC.persons = persons
                }
            }
        }
    }
