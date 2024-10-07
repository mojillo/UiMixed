//
//  ViewController.swift
//  variousLogins
//
//  Created by Parth Dave on 07/10/24.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let gradientLayer = CAGradientLayer()
        gradientLayer.frame = view.bounds
        gradientLayer.colors = [UIColor.red.cgColor, UIColor.green.cgColor,UIColor.blue.cgColor]
        view.layer.insertSublayer(gradientLayer, at: 0)
    }

    @IBAction func showLoginScreensTapped(_ sender: UIButton) {
        let sb = UIStoryboard(name: "LoginScreen", bundle: nil)
        let vc = sb.instantiateViewController(withIdentifier: "LoginScreensVC") as! LoginScreensVC
        self.navigationController?.pushViewController(vc, animated: true)
    }
    
}

