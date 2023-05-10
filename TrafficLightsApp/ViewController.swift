//
//  ViewController.swift
//  TrafficLightsApp
//
//  Created by m.korovin on 10.05.2023.
//

import UIKit

class ViewController: UIViewController {
    

    @IBOutlet var RedLightView: UIView!
    @IBOutlet var YellowLightView: UIView!
    @IBOutlet var GreenLightView: UIView!
    
    @IBOutlet var TrafficLightsButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        RedLightView.layer.cornerRadius = 60
        YellowLightView.layer.cornerRadius = 60
        GreenLightView.layer.cornerRadius = 60
        RedLightView.alpha = 0.3
        YellowLightView.alpha = 0.3
        GreenLightView.alpha = 0.3
        //через пропорцию?
    }


    
    @IBAction func TrafficLightsButtonAcion() {
        if RedLightView.alpha == 0.3 && GreenLightView.alpha == 0.3 && YellowLightView.alpha == 0.3 {
            RedLightView.alpha = 1
            print("button tapped")
        }
        else {
            YellowLightView.alpha = 1
            print("no")
        }
    }
}
// задать зависимость цвета от кнопки для первого шага?
