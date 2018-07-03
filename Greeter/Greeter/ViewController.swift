//
//  ViewController.swift
//  Greeter
//
//  Created by Ke Ma on 03/07/2018.
//  Copyright © 2018 MyDrive. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var welcomeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func greetUser(_ sender: Any) {
        welcomeText.text = "Welcome"
    }
    
}

