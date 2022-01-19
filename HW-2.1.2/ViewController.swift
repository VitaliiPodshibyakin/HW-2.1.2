//
//  ViewController.swift
//  HW-2.1.2
//
//  Created by Виталий Подшибякин on 19.01.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    @IBOutlet var startButton: UIButton!
    var light = "red"
    override func viewDidLoad() {
        super.viewDidLoad()
        redLightView.layer.cornerRadius = 60
        redLightView.alpha = 0.3
        yellowLightView.layer.cornerRadius = 60
        yellowLightView.alpha = 0.3
        greenLightView.layer.cornerRadius = 60
        greenLightView.alpha = 0.3
        startButton.layer.cornerRadius = 10
    }

    @IBAction func startButtonPress() {
        switch light {
        case "red":
            redLightView.alpha = 1
            greenLightView.alpha = 0.3
            light = "yellow"
            startButton.setTitle("NEXT", for: .normal)
        case "yellow":
            yellowLightView.alpha = 1
            redLightView.alpha = 0.3
            light = "green"
        case "green":
            greenLightView.alpha = 1
            yellowLightView.alpha = 0.3
            light = "red"
        default:
            break
        }
    }
    
}

