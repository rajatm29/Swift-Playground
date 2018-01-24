//
//  ViewController.swift
//  AutoSizingUITextView
//
//  Created by Rajat Monga on 1/23/18.
//  Copyright © 2018 Rajat Monga. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Our Text View
        let textView = UITextView()
        textView.frame = CGRect(x: 0, y: 0, width: 200, height: 100)
        
        
        textView.backgroundColor = .lightGray
        textView.text = "Defaut text we want to show the wrap of all the words that show on the screen"
        
        view.addSubview(textView)
        // lets use auto layout to set the textview as an array
        textView.translatesAutoresizingMaskIntoConstraints = false
        
            [
            textView.topAnchor.constraint(equalTo: view.safeAreaLayoutGuide.topAnchor),
            textView.leadingAnchor.constraint(equalTo:
                view.leadingAnchor),
            textView.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            textView.heightAnchor.constraint(equalToConstant: 50)
            ].forEach{ $0.isActive = true }
        
        
        // modify font size
        
        textView.font = UIFont.preferredFont(forTextStyle: .headline)
        
        textView.delegate = self
        
        //disabling scroll in textview
        
        textView.isScrollEnabled = false
        
        //to deal autosizing box when textview has default text in it
        textViewDidChange(textView)
    }


}

//using extension to deal with conform
extension ViewController: UITextViewDelegate {
    
    func textViewDidChange(_ textView: UITextView) {
        //print(textView.text)
        //resize text view depending on text inside
        
    
        let size = CGSize(width: view.frame.width, height: .infinity)
        let estimatedSize = textView.sizeThatFits(size)
        
        //we want to change the heightAnchor but we have to loop through the array of contraints to access the heighAnchor
        textView.constraints.forEach { (constraint) in
            if constraint.firstAttribute == .height {
                //System figures out automatically how big the text view needs to be
                constraint.constant = estimatedSize.height
            }
        }
        
    }
    
}
