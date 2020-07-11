//
//  ViewController.swift
//  ButtonFun
//
//  Created by 覃团业 on 2020/7/11.
//  Copyright © 2020 覃团业. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var statusLabel: UILabel!
    var leftBtn: UIButton!
    var rightBtn: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let bounds = UIScreen.main.bounds
        
        statusLabel = UILabel()
        statusLabel.textAlignment = .center
        statusLabel.frame = CGRect(x: 20, y: 120, width: bounds.width - 40, height: 22)
        
        leftBtn = UIButton(type: .system)
        leftBtn.setTitle("Left", for: .normal)
        var size = NSString(string: "Left").size(withAttributes: [NSAttributedString.Key.font: leftBtn.titleLabel!.font!])
        leftBtn.frame = CGRect(x: 20, y: (bounds.height - size.height) / 2, width: size.width, height: size.height)
        leftBtn.addTarget(self, action: #selector(buttonPressed(_:)), for: UIButton.Event.touchUpInside)
        
        rightBtn = UIButton(type: .system)
        rightBtn.setTitle("Right", for: .normal)
        size = NSString(string: "Right").size(withAttributes: [NSAttributedString.Key.font: rightBtn.titleLabel!.font!])
        rightBtn.frame = CGRect(x: bounds.width - 20 - size.width, y: (bounds.height - size.height) / 2, width: size.width, height: size.height)
        rightBtn.addTarget(self, action: #selector(buttonPressed(_:)), for: UIButton.Event.touchUpInside)
        
        self.view.addSubview(statusLabel)
        self.view.addSubview(leftBtn)
        self.view.addSubview(rightBtn)
    }

    @objc func buttonPressed(_ sender: UIButton) {
        let title = sender.title(for: .selected)!
        let text = "\(title) button pressed"
        let styledText = NSMutableAttributedString(string: text)
        let attributes = [
            NSAttributedString.Key.font: UIFont.boldSystemFont(ofSize: statusLabel.font.pointSize)
        ]
        let nameRange = (text as NSString).range(of: title)
        styledText.setAttributes(attributes, range: nameRange)
        
        statusLabel.attributedText = styledText
    }
}

