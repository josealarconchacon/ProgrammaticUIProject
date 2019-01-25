//
//  FirstViewController.swift
//  ProgrammaticUIProject
//
//  Created by Jose Alarcon Chacon on 1/24/19.
//  Copyright © 2019 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController {
    let firstView = FirstView()
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.backgroundColor = .white
        self.view.addSubview(firstView)
        firstView.delegate = self
    }
}
extension FirstViewController: FirstViewDelegate {
    func sendWasPressed(message: String) {
        navigationController?.pushViewController(DetailViewController.init(message: firstView.textFieldType.text!), animated: true)
    }
}
