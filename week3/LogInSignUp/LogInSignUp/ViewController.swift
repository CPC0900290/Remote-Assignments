//
//  ViewController.swift
//  LogInSignUp
//
//  Created by Pin Chen on 2024/1/24.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var checkText: UITextField!
    @IBOutlet weak var checkLabel: UILabel!
    @IBOutlet weak var passwordText: UITextField!
    @IBOutlet weak var accountText: UITextField!
    @IBOutlet weak var segment: UISegmentedControl!
    
    var users: [[String:String]] = []
    var appWorksSchool:Dictionary = ["account": "appworks_school", "password": "1234"]
    
    
    let selectedTitleAttributes = [NSAttributedString.Key.foregroundColor: UIColor.white]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        checkText.isUserInteractionEnabled = false
        segment.selectedSegmentTintColor = UIColor.black
        segment.setTitleTextAttributes(selectedTitleAttributes, for: .selected)
        segment.backgroundColor = UIColor.white
        segment.layer.borderColor = UIColor.black.cgColor
        segment.layer.borderWidth = 2.0
        segment.layer.cornerRadius = 0
        users.append(appWorksSchool)
    }
    
    @IBAction func didChangedSegment(_ sender: UISegmentedControl) {
        switch sender.selectedSegmentIndex {
        case 0:
            checkText.backgroundColor = .darkGray
            checkText.isUserInteractionEnabled = false
            checkLabel.textColor = .gray
            checkText.text = nil
        case 1:
            checkText.backgroundColor = .white
            checkText.isUserInteractionEnabled = true
            checkLabel.textColor = .black
        default:
            break
        }
    }
    
    func loginError(_ message: String) {
        let controller = UIAlertController(title: "Error", message: message, preferredStyle: .alert)
        let okAction = UIAlertAction(title: "OK", style: .default)
        controller.addAction(okAction)
        present(controller, animated: true)
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        
        if let account = accountText.text, let password = passwordText.text {
            if account.isEmpty {
                loginError("Account should not be empty.")
            } else if password.isEmpty {
                loginError("Password should not be empty.")
            } else {
                switch segment.selectedSegmentIndex {
                case 0:
                    let userTyped = ["account": account,"password": password]
                    let isSameUser = NSDictionary(dictionary: users[0]).isEqual(to: userTyped)
                    if isSameUser {
                        print("Login success")
                        return
                    } else {
                        loginError("Login fail")
                    }
                    
                case 1:
                    if let check = checkText.text {
                        if check.isEmpty {
                            loginError("Check password should not be empty.")
                        } else {
                            let isSamePassword = password == check
                            if isSamePassword {
                                print("Sign up success")
                                print(check)
                            } else {
                                loginError("Signup fail")
                            }
                        }
                    }
                default:
                    break
                }
            }
        }
    }
}

extension ViewController: UITextFieldDelegate {
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        if textField == accountText {
            return passwordText.becomeFirstResponder()
        } else if textField == passwordText {
            if segment.selectedSegmentIndex == 0 {
                return textField.resignFirstResponder()
            } else {
                return checkText.becomeFirstResponder()
            }
        } else {
            return textField.resignFirstResponder()
        }
    }
}
