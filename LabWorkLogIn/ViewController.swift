//
//  ViewController.swift
//  LabWorkLogIn
//
//  Created by Hong Le on 28/11/2018.
//  Copyright © 2018 Hong Le. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var forgottenUserNameButton: UIButton!
    @IBOutlet weak var forgottenPasswordButton: UIButton!
    @IBOutlet weak var UserNameTextField: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {

        guard let sender = sender as? UIButton else {return}

        if sender == forgottenPasswordButton {
            segue.destination.navigationItem.title = "Forgot Password"
        } else if sender == forgottenUserNameButton {    segue.destination.navigationItem.title = "Forgot Username"
        } else {
            segue.destination.navigationItem.title =
                UserNameTextField.text
        }
          

    }
    @IBAction func forgottenUserNamePressed(_ sender: Any) {
performSegue(withIdentifier: "view", sender: forgottenUserNameButton)
        
        
        
    }
    @IBAction func forgottenPasswordPressed(_ sender: Any) {
        performSegue(withIdentifier: "view", sender: forgottenPasswordButton)
    }
    
}

