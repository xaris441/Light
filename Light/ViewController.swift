//
//  ViewController.swift
//  Light
//
//  Created by Alex Harhardin on 01/09/2019.
//  Copyright © 2019 Alex Harhardin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var lightOn = false
    @IBAction func buttonPressed(_ sender: UIButton) {
            lightOn = !lightOn
      updateUI()
    }
    func updateUI() {
        view.backgroundColor = lightOn ? .white : .black
//        if lightOn {
//            view.backgroundColor = .white
//        } else {
//            view.backgroundColor = .black
//        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    updateUI()
    }



}

