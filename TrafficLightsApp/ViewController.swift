//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by m.korovin on 10.05.2023.
//

import UIKit

final class ViewController: UIViewController {
    
    @IBOutlet var redLightView: UIView!
    @IBOutlet var yellowLightView: UIView!
    @IBOutlet var greenLightView: UIView!
    
    @IBOutlet var trafficLightsButton: UIButton!
    
    private var currentLight = CurrentLight.red
    private let lightsOn: CGFloat = 1
    private let lightsOff: CGFloat = 0.3
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        trafficLightsButton.layer.cornerRadius = 20
        
        redLightView.alpha = lightsOff
        yellowLightView.alpha = lightsOff
        greenLightView.alpha = lightsOff
        

        
        
    }
    
    override func viewWillLayoutSubviews() {
        redLightView.layer.cornerRadius = redLightView.frame.width / 2
        yellowLightView.layer.cornerRadius = yellowLightView.frame.width / 2
        greenLightView.layer.cornerRadius = yellowLightView.frame.width / 2
    }

    

    
    @IBAction func trafficLightsVuttonAction() {
        if trafficLightsButton.currentTitle == "START" {
            trafficLightsButton.setTitle("NEXT", for: .normal)
        }
        
                switch currentLight {
                case .red:
                    greenLightView.alpha = lightsOff
                    yellowLightView.alpha = lightsOff
                    redLightView.alpha = lightsOn
                case .yellow:
                    greenLightView.alpha = lightsOff
                    yellowLightView.alpha = lightsOn
                    redLightView.alpha = lightsOff
                case .green:
                    greenLightView.alpha = lightsOn
                    yellowLightView.alpha = lightsOff
                    redLightView.alpha = lightsOff
                }
    }
    
}

// MARK: - CurrentLight
extension ViewController {
   private enum CurrentLight {
        case red, yellow, green
    }
}
