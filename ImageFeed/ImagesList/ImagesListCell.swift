//
//  ImagesListCell.swift
//  ImageFeed
//
//  Created by Алексей on 28.01.2023.
//


import UIKit

final class ImagesListCell: UITableViewCell {
    
    static let reuseIdentifier = "ImagesListCell"
    
    @IBOutlet weak var imageInCell: UIImageView!
   
    @IBOutlet weak var dateLabel: UILabel!
    
    @IBOutlet weak var likeButton: UIButton!
    
}
