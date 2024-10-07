//
//  LoginScreensVC.swift
//  variousLogins
//
//  Created by Parth Dave on 07/10/24.
//

import UIKit

class LoginScreensVC: UIViewController {

    //MARK: - Outlets
    @IBOutlet weak var mainView: UIView!
    @IBOutlet weak var emailView: UIView!
    @IBOutlet weak var passwordView: UIView!
    
    @IBOutlet weak var emailTf: UITextField!
    @IBOutlet weak var passwordTf: UITextField!
    
    @IBOutlet weak var registerBtn: UIButton!
    @IBOutlet weak var resetBtn: UIButton!
    @IBOutlet weak var loginBtn: UIButton!
    @IBOutlet weak var loginWithGoogleBtn: UIButton!
    @IBOutlet weak var loginWithFacebookBtn: UIButton!
    @IBOutlet weak var loginWithStackOverflowBtn: UIButton!    
    @IBOutlet weak var loginWithApple: UIButton!
    @IBOutlet weak var loginWithLinkedIn: UIButton!
    
    
    //MARK: - Variables
    
    //MARK: - Life Cycle Methods
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    //MARK: - UiSetup
    func setupUI() {
        emailTf.delegate = self
        passwordTf.delegate = self
        
        emailTf.placeholder = "   Email"
        passwordTf.placeholder = "   Password"
        
        mainView.layer.cornerRadius = 20
        emailView.layer.cornerRadius = 20
        passwordView.layer.cornerRadius = 20
        
        mainView.layer.masksToBounds = true
        emailView.clipsToBounds = true
        passwordView.clipsToBounds = true
        
        emailView.layer.borderWidth = 1
        emailView.layer.borderColor = UIColor.lightGray.cgColor
        
        passwordView.layer.borderWidth = 1
        passwordView.layer.borderColor = UIColor.lightGray.cgColor
        
        loginWithGoogleBtn.layer.cornerRadius = 18
        loginWithGoogleBtn.layer.borderWidth = 1
        loginWithGoogleBtn.layer.borderColor = UIColor.lightGray.cgColor
        
        loginWithGoogleBtn.layer.masksToBounds = true
        emailView.layer.masksToBounds = true
        passwordView.layer.masksToBounds = true
    }
    
    //MARK: - ibActions
    @IBAction func backTapped(_ sender: UIButton) {
        self.navigationController?.popViewController(animated: true)
    }
}
extension LoginScreensVC : UITextFieldDelegate {
    
}
