//
//  ImageView.swift
//  LayoutInCodeTest_IrinaBakeeva
//
//  Created by Irina Marmyl on 5/4/24.
//

import UIKit

class ImageViewViewController: UIImage {
    
    lazy var imageView: UIImageView = {
        // Set the size of UIImageView.
        let width: CGFloat = 50
        let height: CGFloat = 15
        
        // Set x, y of UIImageView.
        let posX: CGFloat = 20
        let posY: CGFloat = 10
        
        // Create UIImageView.
        let imageView = UIImageView(frame: CGRect(x: posX, y: posY, width: width, height: height))
        
        // Create UIImage.
        let myImage: UIImage = UIImage(named: "line")!
        
        // Set the image to UIImageView.
        imageView.image = myImage
        
        return imageView
    }()

    }
