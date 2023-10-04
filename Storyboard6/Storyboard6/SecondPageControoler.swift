//
//  SecondPageControoler.swift
//  Storyboard6
//
//  Created by Mac User on 3/10/23.
//

import UIKit
import ColorSync
class SecondPageController: UIViewController {
    
    var firstLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Enter Your Phone Number"
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.textColor = .black
        view.textAlignment = .center
        return view
    }()
    
    var secondLabel: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Please confirm your country code and enter \nyour phone number"
        view.font = .systemFont(ofSize: 14, weight: .regular)
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    var countryCod: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "Country Code")
        return view
    }()
    
    var phoneTF: UITextField = {
        let view = UITextField()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.placeholder = "Phone Number"
        view.backgroundColor = .lightGray
        view.layer.cornerRadius = 5
        
        return view
    }()
    
    var continueBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.setTitle("Continue", for: .normal)
        view.backgroundColor = .blue
        view.tintColor = .white
        view.addTarget(nil, action: #selector(continueBtnTapped), for: .touchUpInside)
        view.layer.cornerRadius = 30
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.backgroundColor = .white
        
        view.addSubview(firstLabel)
        setUpConstraintsForFirstLabel()
        
        view.addSubview(secondLabel)
        setUpConstraintsForSecondLabel()
        
        view.addSubview(countryCod)
        setUpConstraintsForCountryCodImage()
        
        view.addSubview(phoneTF)
        setUpConstraintsForPhoneTF()
        
        view.addSubview(continueBtn)
        setUpConstraintsForCOntinueButton()
    }
    
    
    func setUpConstraintsForFirstLabel(){
        firstLabel.topAnchor.constraint(equalTo: view.topAnchor, constant: 170).isActive = true
        firstLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant:45).isActive = true
        firstLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -50).isActive = true
    }
    func setUpConstraintsForSecondLabel(){
        secondLabel.topAnchor.constraint(equalTo: firstLabel.bottomAnchor, constant: 8).isActive = true
        secondLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 40).isActive = true
        secondLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -40).isActive = true
    }
    
    func setUpConstraintsForCountryCodImage(){
        countryCod.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 50).isActive = true
        countryCod.widthAnchor.constraint(equalToConstant: 80).isActive = true
        countryCod.heightAnchor.constraint(equalToConstant: 40).isActive = true
        countryCod.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
    }
    
    func setUpConstraintsForPhoneTF(){
        phoneTF.topAnchor.constraint(equalTo: secondLabel.bottomAnchor, constant: 50).isActive = true
        phoneTF.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -25).isActive = true
        phoneTF.leadingAnchor.constraint(equalTo: countryCod.trailingAnchor, constant: 8).isActive = true
        phoneTF.heightAnchor.constraint(equalToConstant:    40).isActive = true
    }
    
    func setUpConstraintsForCOntinueButton(){
    continueBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
    continueBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
    continueBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 24).isActive = true
    continueBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -24).isActive = true
    }
    
    @objc func continueBtnTapped(){
        let vc = ThirdPageController()
        navigationController?.pushViewController(vc, animated: true)
    }
}
