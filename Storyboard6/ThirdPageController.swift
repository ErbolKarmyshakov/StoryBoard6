//
//  ThirdPageController.swift
//  Storyboard6
//
//  Created by Mac User on 4/10/23.
//

import UIKit
class ThirdPageController: UIViewController{
    
    var avatar: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Avatar")
        return view
    }()
    
    var firstNameTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "First Name (Required)"
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 5
        return view
    }()
    
    var secondNameTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Last Name (Optional)"
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 5
        return view
    }()
    
    var save: UIButton = {
        let view = UIButton()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Save", for: .normal)
        view.backgroundColor = .blue
        view.tintColor = .white
        view.layer.cornerRadius = 30
        return view 
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .white
        
        view.addSubview(avatar)
        setUpConstraintsForAvatar()
        
        view.addSubview(firstNameTF)
        setUpConstraintsForFirstNameTF()
        
        view.addSubview(secondNameTF)
        setUpConstraintsForSecondNameTF()
        
        view.addSubview(save)
        setUpConstraintsForSaveButtonTapped()
    }
    func setUpConstraintsForAvatar(){
        avatar.topAnchor.constraint(equalTo: view.topAnchor, constant: 140).isActive = true
        avatar.widthAnchor.constraint(equalToConstant: 100).isActive = true
        avatar.heightAnchor.constraint(equalToConstant: 120).isActive = true
        avatar.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 2/3).isActive = true
    }

    func setUpConstraintsForFirstNameTF(){
        firstNameTF.topAnchor.constraint(equalTo: avatar.bottomAnchor, constant: 35).isActive = true
        firstNameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive  = true
        firstNameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        firstNameTF.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    
    func setUpConstraintsForSecondNameTF() {
        secondNameTF.topAnchor.constraint(equalTo: firstNameTF.bottomAnchor, constant: 12).isActive = true
        secondNameTF.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive  = true
        secondNameTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        secondNameTF.heightAnchor.constraint(equalToConstant: 40).isActive = true
    }
    func setUpConstraintsForSaveButtonTapped(){
        save.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        save.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        save.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        save.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
}
