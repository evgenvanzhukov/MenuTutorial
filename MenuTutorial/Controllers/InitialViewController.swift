//
//  ViewController.swift
//  MenuTutorial
//
//  Created by Evgen on 07.01.2023.
//

import UIKit

protocol MenuToggleDelegate {
    func toggleMenu()
}

class InitialViewController: UIViewController {
    
    //var menuButton: UIButton!
    var delegate: MenuToggleDelegate?
    var menuButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureMenuButton()
    }
    
    func configureMenuButton() {
        if menuButton == nil {
            menuButton = UIButton()
            view.addSubview(menuButton)
            menuButton.setBackgroundImage(UIImage(named: "burger"), for: .normal)
            menuButton.isEnabled = true
            menuButton.translatesAutoresizingMaskIntoConstraints = false
            menuButton.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 50).isActive = true
            menuButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 10).isActive = true
            menuButton.heightAnchor.constraint(equalToConstant: 50).isActive = true
            menuButton.widthAnchor.constraint(equalToConstant: 50).isActive = true
            menuButton.isUserInteractionEnabled = true
            menuButton.addTarget(self, action: #selector(menuButtonPressed), for: .touchUpInside)
        }
    }

    
    @objc
    func menuButtonPressed(_ sender: Any) {
        delegate?.toggleMenu()
    }
}

