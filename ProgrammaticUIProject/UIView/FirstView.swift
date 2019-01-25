//
//  FirstView.swift
//  ProgrammaticUIProject
//
//  Created by Jose Alarcon Chacon on 1/24/19.
//  Copyright © 2019 Jose Alarcon Chacon. All rights reserved.
//

import UIKit
protocol FirstViewDelegate: AnyObject {
    func sendWasPressed(message: String)
}

class FirstView: UIView {
    weak var delegate: FirstViewDelegate?
    
    lazy var mainButton: UIButton = {
        let button = UIButton()
        button.setTitle("Send", for: .normal)
        button.backgroundColor = .black
        button.addTarget(self, action: #selector(sendWasPressed), for: .touchUpInside)
        return button
    }()
    @objc func sendWasPressed() {
        textFieldType.resignFirstResponder()
        let textField = textFieldType.text
        delegate?.sendWasPressed(message: textField!)
    }
    lazy var textFieldType: UITextField = {
        let textField = UITextField()
        textField.placeholder = "Type something"
        textField.backgroundColor = .black
        textField.textAlignment = .center
        textField.textColor = .white
        return textField
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        addSubview(mainButton)
        addSubview(textFieldType)
        setButtonConstraints()
        setTextFieldConstraint()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    func setButtonConstraints() {
        mainButton.translatesAutoresizingMaskIntoConstraints = false
        mainButton.centerXAnchor.constraint(equalTo: centerXAnchor).isActive = true
        mainButton.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
    }
    func setTextFieldConstraint() {
        textFieldType.translatesAutoresizingMaskIntoConstraints = false
        textFieldType.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 250).isActive = true
        textFieldType.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 50).isActive = true
        textFieldType.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -50).isActive = true
        
    }

}
