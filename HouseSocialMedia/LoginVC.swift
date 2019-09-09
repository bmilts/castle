//
//  LoginVC.swift
//  HouseSocialMedia
//
//  Created by Brendan Milton on 09/09/2019.
//  Copyright © 2019 Brendan Milton. All rights reserved.
//

import UIKit

class LoginVC: UIViewController {
    
    @IBOutlet weak var textFieldsView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        configureTextFieldsView()
    }
    
    // Configures appearance of text fields view
    func configureTextFieldsView() {
        let border = CALayer()
        let width = CGFloat(2)
        let colour = UIColor.groupTableViewBackground.cgColor
        border.borderColor = colour
        border.frame = CGRect(x: 0, y: 0, width: textFieldsView.frame.width, height: textFieldsView.frame.height)
        border.borderWidth = width
        
        let line = CALayer()
        line.borderWidth = width
        line.borderColor = colour
        line.frame = CGRect(x: 0, y: textFieldsView.frame.height / 2 - width, width: textFieldsView.frame.width, height: width)
        
        textFieldsView.layer.addSublayer(border)
        textFieldsView.layer.addSublayer(line)
        
        textFieldsView.layer.cornerRadius = 5
        
    }
    
}
