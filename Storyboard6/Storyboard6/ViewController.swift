//
//  ViewController.swift
//  Storyboard6
//
//  Created by Mac User on 3/10/23.
//

import UIKit

class ViewController: UIViewController {
    
    var photo: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.image = UIImage(named: "firstPhoto")
        
       return view
    }()
    
    var mainLbl: UILabel = {
        let view = UILabel()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.text = "Connect easily with\nyour family and \nfriends over countries"
        view.font = .systemFont(ofSize: 24, weight: .bold)
        view.textColor = .black
        view.numberOfLines = 0
        view.textAlignment = .center
        return view
    }()
    
    var startBtn: UIButton = {
        let view = UIButton(type: .system)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .blue
        view.setTitle("Start Messaging", for: .normal)
        view.tintColor = .white
        view.layer.cornerRadius = 30
        view.addTarget(nil, action: #selector(startBtnTapped), for: .touchUpInside)
        return view
    }()
    @objc func startBtnTapped(){
        let vc = SecondPageController()
        navigationController?.pushViewController(vc, animated: true)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        view.addSubview(photo)
        setUpConstraintsForPhoto()
        
        view.addSubview(mainLbl)
        setUpConstraintsForMainLabel()
      
        view.addSubview(startBtn)
        setUpConstraintsForStartButton()
       
    }
    func setUpConstraintsForPhoto(){
        photo.topAnchor.constraint(equalTo: view.topAnchor, constant: 135).isActive = true
        //        photo.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: 51).isActive = true
        //        photo.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 61).isActive = true
        //        photo.widthAnchor.constraint(equalTo: view.widthAnchor, constant: 262).isActive = true
        //        photo.heightAnchor.constraint(equalTo: view.heightAnchor, constant: 271).isActive = true
        photo.centerXAnchor.constraint(equalToSystemSpacingAfter: view.centerXAnchor, multiplier: 2/3).isActive = true
    }
    func setUpConstraintsForMainLabel(){
        mainLbl.topAnchor.constraint(equalTo: photo.bottomAnchor, constant: 50).isActive = true
        mainLbl.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 48).isActive = true
        mainLbl.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -47).isActive = true
    }
    func setUpConstraintsForStartButton(){
        startBtn.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: -50).isActive = true
        startBtn.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 25).isActive = true
        startBtn.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant:-25 ).isActive = true
        startBtn.heightAnchor.constraint(equalToConstant: 60).isActive = true
    }
    
   
}

