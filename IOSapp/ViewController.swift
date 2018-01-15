//
//  ViewController.swift
//  IOSapp
//
//  Created by Ignacio Huichal on 15-01-18.
//  Copyright © 2018 Ignacio Huichal. All rights reserved.
//

import UIKit

class ViewController: UIViewController  {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBOutlet weak var outText: UILabel!
    
    @IBAction func buttonPrincipal(_ sender: AnyObject) {
        outText.text = "HOLA MUNDO"
    }
    
}

