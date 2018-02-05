//
//  ViewController.swift
//  AnchorAutoLayout
//
//  Created by Rajat Monga on 2/4/18.
//  Copyright © 2018 Rajat Monga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let redView = UIView()
        redView.backgroundColor = .red
        
        view.addSubview(redView)
        
        //emables auto layout
        redView.translatesAutoresizingMaskIntoConstraints = false
        
        redView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        redView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        redView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        redView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
        
        redView.anchor()
        
    }


}


extension UIView {
    func anchor(top: NSLayoutYAxisAnchor, leading: NSLayoutXAxisAnchor, bottom: NSLayoutYAxisAnchor, trailing: NSLayoutXAxisAnchor) {
        translatesAutoresizingMaskIntoConstraints = false
        
        topAnchor.constraint(equalTo: top).isActive = true
        leadingAnchor.constraint(equalTo: leading).isActive = true
        bottomAnchor.constraint(equalTo: bottom).isActive = true
        trailingAnchor.constraint(equalTo: trailingAnchor).isActive = true
    }
    
    
}
