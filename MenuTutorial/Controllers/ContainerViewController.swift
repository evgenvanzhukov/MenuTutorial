//
//  ContainerViewController.swift
//  MenuTutorial
//
//  Created by Evgen on 07.01.2023.
//

import UIKit

class ContainerViewController: UIViewController, MenuToggleDelegate {

    var controller: UIViewController!
    var menuViewController: MenuViewController!
    var shouldMove = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        configureInitialViewController()
        
    }
    

    func configureInitialViewController() {
        var initialController = UIStoryboard(name: "Main", bundle: nil).instantiateInitialViewController() as! InitialViewController
        initialController.delegate = self
        controller = initialController
        view.addSubview(initialController.view)
        addChild(controller)
    }
    
    func configureMenuViewController() {
        if menuViewController == nil {
            menuViewController = MenuViewController()
            view.insertSubview(menuViewController.view, at: 0)
            addChild(menuViewController)
        }
        
    }
    
    func showMenu() {
        if shouldMove {
            UIView.animate(withDuration: 0.5) {
                self.controller.view.frame.origin.x = self.controller.view.frame.width - 100
            } completion: { (finished) in
                
            }
        }
        else {
            UIView.animate(withDuration: 0.5) {
                self.controller.view.frame.origin.x = 0
            } completion: { (finished) in
                
            }
        }
    }

    
    //MARK: - MenuToggleDelegate
    func toggleMenu() {
        configureMenuViewController()
        shouldMove = !shouldMove
        showMenu()
    }
}
