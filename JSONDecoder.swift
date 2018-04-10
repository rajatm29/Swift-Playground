//
//  ViewController.swift
//  SnakeCase
//
//  Created by Rajat Monga on 4/5/18.
//  Copyright © 2018 Rajat Monga. All rights reserved.
//

import UIKit

struct Course {
    let id: Int
    let name: String
    let link: String
    let imageUrl: String
}

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
        //let myCourse = Course(id: 1, name: "my Course", link:" some link", imageUrl:"some Url")
        
        let jsonUrlString = "https://api.website.com/jsondecodable/stuff"
        
        
        guard let url = URL(string: jsonUrlString) else { return }
        
        URLSession.shared.dataTask(with: url) {
            (data, response, err) in
            print("do stuff")
        }.resume()
        
    }

    


}

