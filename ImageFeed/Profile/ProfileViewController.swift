//
//  ProfileViewController.swift
//  ImageFeed
//
//  Created by Алексей on 05.02.2023.
//

import UIKit

final class ProfileViewController: UIViewController {
    @IBOutlet private var avatarImageView: UIImageView!
    @IBOutlet private var nameLabel: UILabel!
   
    @IBOutlet weak var loginNameLabel: UILabel!
   
    @IBOutlet weak var descriptionLabel: UILabel!
    
    @IBOutlet private var logoutButton: UIButton!

    @IBAction private func didTapLogoutButton() {
    }
}
