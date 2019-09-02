//
//  ViewController.swift
//  Light
//
//  Created by Alex Harhardin on 01/09/2019.
//  Copyright © 2019 Alex Harhardin. All rights reserved.
//
import AVFoundation
import UIKit

class ViewController: UIViewController {
var lightOn = false
    @IBAction func buttonPressed(_ sender: UIButton) {
            lightOn = !lightOn
        updateView()
    }
    func updateView() {
        let device = AVCaptureDevice.default(for: AVMediaType.video)
        
        if let dev = device, dev.hasTorch {
            view.backgroundColor = .black
            do {
                try dev.lockForConfiguration()
                dev.torchMode = lightOn ? .on : .off
                dev.unlockForConfiguration()
            } catch {
                print(error)
            }
        } else {
            view.backgroundColor = lightOn ? .white : .black
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    updateView()
    }

    override var prefersStatusBarHidden: Bool {
        return true
    }

}

