//
//  DetailView.swift
//  ProgrammaticUIProject
//
//  Created by Jose Alarcon Chacon on 1/24/19.
//  Copyright © 2019 Jose Alarcon Chacon. All rights reserved.
//

import UIKit

class DetailView: UIView {
    
    lazy var myLabel: UILabel = {
        let label = UILabel()
        label.text = "Jose"
        label.textAlignment = .center
        label.backgroundColor = .white
        return label
    }()
    override init(frame: CGRect) {
        super.init(frame: UIScreen.main.bounds)
        backgroundColor = .white
        addSubview(myLabel)
        setTextField()
    }
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    func setTextField() {
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.translatesAutoresizingMaskIntoConstraints = false
        myLabel.topAnchor.constraint(equalTo: safeAreaLayoutGuide.topAnchor, constant: 11).isActive = true
        myLabel.leadingAnchor.constraint(equalTo: leadingAnchor, constant: 11).isActive = true
        myLabel.trailingAnchor.constraint(equalTo: trailingAnchor, constant: -11).isActive = true
    }

}
