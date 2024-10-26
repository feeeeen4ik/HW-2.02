//
//  ViewController.swift
//  HW 2.02
//
//  Created by Феликс Антонович on 26.10.2024.
//

import UIKit

enum CurrentLight {
    case red, yellow, green
}

class ViewController: UIViewController {
    
    @IBOutlet var redLightOutlet: UIView!
    @IBOutlet var yellowLightOutlet: UIView!
    @IBOutlet var greenLightOutlet: UIView!
    @IBOutlet var startButtonOutlet: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightIsOff = 0.3
    private let lightIsOn  = 1
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        redLightOutlet.layer.cornerRadius    = 50
        yellowLightOutlet.layer.cornerRadius = 50
        greenLightOutlet.layer.cornerRadius  = 50
        startButtonOutlet.layer.cornerRadius = 10
        
        redLightOutlet.alpha    = lightIsOff
        yellowLightOutlet.alpha = lightIsOff
        greenLightOutlet.alpha  = lightIsOff
    }
    
    
    @IBAction func StartButtonAction() {
        startButtonOutlet.setTitle("Next", for: .normal)
        
        switch currentLight {
        case .red:
            redLightOutlet.alpha   = CGFloat(lightIsOn)
            greenLightOutlet.alpha = lightIsOff
            
            currentLight = CurrentLight.yellow
        case .yellow:
            yellowLightOutlet.alpha = CGFloat(lightIsOn)
            redLightOutlet.alpha    = lightIsOff
            
            currentLight = CurrentLight.green
        case .green:
            greenLightOutlet.alpha  = CGFloat(lightIsOn)
            yellowLightOutlet.alpha = lightIsOff
            
            currentLight = CurrentLight.red
        }
    }
}

