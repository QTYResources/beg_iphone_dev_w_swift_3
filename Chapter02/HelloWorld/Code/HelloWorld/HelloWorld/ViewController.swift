//
//  ViewController.swift
//  HelloWorld
//
//  Created by 覃团业 on 2020/7/11.
//  Copyright © 2020 覃团业. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var label: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let message = "Hello, World!"
        let bounds = UIScreen.main.bounds
        self.label = UILabel()
        let size = NSString(string: message).size(withAttributes: [NSAttributedString.Key.font : self.label.font!])
        self.label.frame = CGRect(x: (bounds.width - size.width) / 2, y: (bounds.height - size.height) / 2, width: size.width, height: size.height)
        self.label.text = message
        self.view.addSubview(self.label)
    }

}

