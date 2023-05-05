//
//  ViewController.swift
//  Three Button
//
//  Created by Лариса Терегулова on 04.05.2023.
//

import UIKit

class ViewController: UIViewController {

    lazy var firstButton: ModifiedButton = {
        let btn = ModifiedButton()
        btn.setTitle("First Button", for: .normal)
        btn.settingButton()
        btn.settingEdgeInsets()
        return btn
    }()
    
    lazy var secondButton: ModifiedButton = {
        let btn = ModifiedButton()
        btn.setTitle("Second Medium Button", for: .normal)
        btn.settingButton()
        btn.settingEdgeInsets()
        return btn
    }()
    
    lazy var thirdButton: ModifiedButton = {
        let btn = ModifiedButton()
        btn.setTitle("Third", for: .normal)
        btn.settingButton()
        btn.settingEdgeInsets()
        btn.addTarget(self, action: #selector(tapButton), for: .touchUpInside)
        return btn
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        view.addSubview(firstButton)
        view.addSubview(secondButton)
        view.addSubview(thirdButton)
        addConstraints()
    }

    func addConstraints() {
        NSLayoutConstraint.activate([firstButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     firstButton.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
                                     
                                     secondButton.topAnchor.constraint(equalTo: firstButton.bottomAnchor, constant: 10),
                                     secondButton.centerXAnchor.constraint(equalTo: view.centerXAnchor),
                                     
                                     thirdButton.topAnchor.constraint(equalTo: secondButton.bottomAnchor, constant: 10),
                                     thirdButton.centerXAnchor.constraint(equalTo: view.centerXAnchor)
                                    ])
    }
    
    @objc func tapButton(_ button: UIButton) {
        let modalController = UIViewController()
        modalController.view.backgroundColor = .white
        present(modalController, animated: true, completion: nil)
    }
    
}


