//
//  ViewController.swift
//  UILessonsApp
//
//  Created by Zamir Argashokov on 26.01.2021.
//

import UIKit

class ViewController: UIViewController {

    let login = "Z"
    let password = "1234"
    
    @IBOutlet weak var welcomeTextField: UILabel!
    @IBOutlet weak var scrollView: UIScrollView!
    @IBOutlet weak var loginTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    @IBOutlet weak var loginButton: UIButton!
    
    @IBAction func handleButtonTap(_ sender: Any) {
        self.scrollView.setContentOffset(CGPoint(x: 0, y: 50), animated: true) //this allows to scroll page down right after user pressed the button
        
        self.loginTextField.resignFirstResponder() //this allows to hide keyboard from screen once the button is tapped
        self.passwordTextField.resignFirstResponder()
        
        if self.loginTextField.text == login && self.passwordTextField.text == password {
            self.welcomeTextField.isHidden = true
            self.loginTextField.isHidden = true
            self.passwordTextField.isHidden = true
            self.loginButton.setTitle("You logged in sucessfully", for: .normal)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
