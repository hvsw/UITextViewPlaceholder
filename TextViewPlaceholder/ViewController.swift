//
//  ViewController.swift
//  TextViewPlaceholder
//
//  Created by Henrique Valcanaia on 2020-04-03.
//  Copyright © 2020 Henrique Valcanaia. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textView: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        let placeholderText = "placeholder text"
        
        /// Looks like I can't set the placecholder AND the attributedPlaceholder
        /// I guess the expected behavior should be that the last one set should
        /// persist and clear the other.
        self.textView?.placeholder = placeholderText
        self.textView?.placeholderColor = UIColor.blue.withAlphaComponent(0.3)
        
        self.textView.text = ""
        
        let placeholderAttributes: [NSAttributedString.Key : Any] = [
            .font:UIFont.systemFont(ofSize: 15), // a little bit larger than default to make easier to notice
            .foregroundColor:UIColor.red.withAlphaComponent(0.3),
        ]
        self.textView?.attributedPlaceholder = NSAttributedString(string: self.textView?.placeholder ?? "",
                                                                  attributes: placeholderAttributes)
    }


}

