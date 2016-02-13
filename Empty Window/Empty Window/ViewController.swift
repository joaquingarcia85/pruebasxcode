//
//  ViewController.swift
//  Empty Window
//
//  Created by Joaquin Garcia tristan on 28/3/15.
//  Copyright (c) 2015 Joaquin Garcia tristan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var label: UILabel!
    @IBOutlet weak var boton: UIButton!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func pulsarBoton(sender: UIButton)
    {
            label.text = "Hola Aprende Swift"
    }

}

