//
//  ViewController.swift
//  ShimmerDemo
//
//  Created by Rajat Monga on 6/17/18.
//  Copyright © 2018 Rajat Monga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        view.backgroundColor = UIColor(white:1, alpha:0.1)
        
        //darker text label in the back
        let darkTextLabel = UILabel()
        darkTextLabel.text = "shimmer"
        darkTextLabel.textColor = UIColor(white:1, alpha: 0.22)
        darkTextLabel.font = UIFont.systemFont(ofSize: 80)
        
        darkTextLabel.frame = CGRect(x:0, y:0, width: view.frame.width, height: 400)
        darkTextLabel.textAlignment = .center
        
        view.addSubview(darkTextLabel)
        
        
        //whiter text label in the back
        let shinyTextLabel = UILabel()
        shinyTextLabel.text = "shimmer"
        shinyTextLabel.textColor = .white
        shinyTextLabel.font = UIFont.systemFont(ofSize: 80)
        
        shinyTextLabel.frame = CGRect(x:0, y:0, width: view.frame.width, height: 400)
        shinyTextLabel.textAlignment = .center
        
        view.addSubview(shinyTextLabel)
        
        
        //white gradient drawing
        
        let gradientLayer = CAGradientLayer()
        gradientLayer.colors = [UIColor.clear.cgColor, UIColor.white.cgColor, UIColor.clear.cgColor]
        gradientLayer.locations = [0,0.5,1]
        gradientLayer.frame = shinyTextLabel.frame
        
        let angle = 45 * CGFloat.pi/180
        gradientLayer.transform = CATransform3DMakeRotation(angle, 0, 0, 1)

        
        //view.layer.addSublayer(gradientLayer)
        shinyTextLabel.layer.mask = gradientLayer
        
        
        let animation = CABasicAnimation(keyPath: "transform.translation.x")
        animation.duration = 2
        animation.fromValue = -view.frame.width
        animation.toValue = view.frame.width
        
        animation.repeatCount = Float.infinity
        
        gradientLayer.add(animation, forKey: "some key")
    }

   

}

