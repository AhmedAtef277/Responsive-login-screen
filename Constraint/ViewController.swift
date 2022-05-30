//
//  ViewController.swift
//  Constraint
//
//  Created by mac on 29/05/2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var emailField: UITextField!
    @IBOutlet weak var passwordField: UITextField!
    @IBOutlet weak var rememberMe: UIButton!
    @IBOutlet weak var logIn: UIButton!
    override func viewDidLoad() {
        super.viewDidLoad()
        emailField.setLeftIcon( emailField, UIImage(named: "user")!, 15, 5, 30, 30)
        passwordField.setLeftIcon( passwordField, UIImage(named: "password")!, 15, 5, 30, 30)
        passwordField.setRightIcon(35, 5, 30, 30)
        rememberMe.setImage(UIImage(named: "emptyCheckBox")!, for: .normal)
        rememberMe.setImage(UIImage(named: "checkbox")!, for: .selected)
        passwordField.isSecureTextEntry = true
        logIn.layer.cornerRadius = 12

        
        
        


    }
    
   
    @IBAction func checkBox(_ sender: UIButton) {
        sender.isSelected = !sender.isSelected
    }
    
}

extension UITextField{
    func setLeftIcon(_ textField : UITextField ,_ image : UIImage , _ x : Int , _ y : Int , _ width : Int ,_ height : Int){
        textField.leftViewMode = .always
        let imageView = UIImageView()
        imageView.frame = CGRect(x: x, y: y, width: width, height: height)
        imageView.image = image
        textField.leftView = imageView
        
    }
    func setRightIcon( _ x : Int , _ y : Int , _ width : Int ,_ height : Int){
        rightViewMode = .always
        let button = UIButton(frame: CGRect(x: x, y: y, width: width, height: height))
                button.setImage(UIImage(named: "showPassword")!, for: .normal)
                button.setImage(UIImage(named: "hidePAssword"), for: .selected)
                rightView = button
                button.addTarget(self, action: #selector(showHidePassword(_:)), for: .touchUpInside)
        
    }
    
    @objc func showHidePassword(_ sender : UIButton) {
        sender.isSelected = !sender.isSelected
        self.isSecureTextEntry = !sender.isSelected
        
    }
    
    
    
    
}

