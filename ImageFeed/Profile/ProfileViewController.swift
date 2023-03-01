//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Алексей on 05.02.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    
    @objc private func didTapLogoutButton() { }
    private var imageView: UIImageView?
    
    private func createProfilePhoto() {
        let profileImage = UIImage(named: "UserPick")
        let imageView = UIImageView(image: profileImage)
        imageView.tintColor = .gray
        imageView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(imageView)
        imageView.heightAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.widthAnchor.constraint(equalToConstant: 70).isActive = true
        imageView.leadingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.leadingAnchor, constant: 16).isActive = true
        imageView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor, constant: 40).isActive = true
        self.imageView = imageView
    }
    
    private func createLogOutButton() {
        
        guard let buttonImage = UIImage(systemName: "ipad.and.arrow.forward"),
        let imageView = imageView else {return}
        let button = UIButton.systemButton(
            with: buttonImage,
            target: self,
            action: #selector(Self.didTapLogoutButton))
        
        button.tintColor = UIColor(named: "YPRed")
        button.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(button)
        button.heightAnchor.constraint(equalToConstant: 22).isActive = true
        button.widthAnchor.constraint(equalToConstant: 20).isActive = true
        button.trailingAnchor.constraint(equalTo: view.safeAreaLayoutGuide.trailingAnchor, constant: -26).isActive = true
    
        button.centerYAnchor.constraint(equalTo: imageView.centerYAnchor).isActive = true
    }
    
    private func createLabelsForProfile() {
        guard let imageView = imageView else {return}
        
        let labelFullName = UILabel()
        labelFullName.text = "Екатерина Новикова"
        labelFullName.font = .systemFont(ofSize: 23, weight: UIFont.Weight(rawValue: 700.00))
        labelFullName.textColor = .white
        
        let labelNickName = UILabel()
        labelNickName.text = "@ekaterina_nov"
        labelNickName.font = .systemFont(ofSize: 13)
        labelNickName.textColor = .gray
        
        let labelStatus = UILabel()
        labelStatus.text = "Hello, world!"
        labelStatus.font = .systemFont(ofSize: 13)
        labelStatus.textColor = .white
        
        
        
        labelFullName.translatesAutoresizingMaskIntoConstraints = false
        labelNickName.translatesAutoresizingMaskIntoConstraints = false
        labelStatus.translatesAutoresizingMaskIntoConstraints = false
        
        view.addSubview(labelFullName)
        view.addSubview(labelNickName)
        view.addSubview(labelStatus)

        NSLayoutConstraint.activate([
            labelFullName.topAnchor.constraint(equalTo: imageView.bottomAnchor, constant: 8),
            labelFullName.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            labelNickName.topAnchor.constraint(equalTo: labelFullName.bottomAnchor, constant: 8),
            labelNickName.leadingAnchor.constraint(equalTo: labelFullName.leadingAnchor),
            labelStatus.topAnchor.constraint(equalTo: labelNickName.bottomAnchor, constant: 8),
            labelStatus.leadingAnchor.constraint(equalTo: labelFullName.leadingAnchor),
        ])
    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        createProfilePhoto()
        createLogOutButton()
        createLabelsForProfile()
    }
}


