//
//  ViewController.swift
//  MyQuartz
//
//  Created by KaiChieh on 26/02/2018.
//  Copyright © 2018 KaiChieh. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    var layer1: CALayer!
    var layer2: CALayer!
    var shadowLayer: CALayer!


    @IBAction func CornerRadius(_ sender: UIButton) {
        layer1.cornerRadius = 20
        layer1.masksToBounds =  layer1.masksToBounds ? false : true
    }
    @IBAction func Shadow(_ sender: UIButton) {
        if layer1.shadowRadius == 0 {
            layer1.shadowColor = UIColor.black.cgColor // set shadow color
            layer1.shadowOffset = CGSize(width: 10, height: 10) //shadow offset by 10
            layer1.shadowOpacity = 0.7
            layer1.shadowRadius = 5
        } else {
            layer1.shadowRadius = 0
            layer1.shadowColor = UIColor.clear.cgColor
        }
    }
    @IBAction func radiusNShadow(_ sender: UIButton) {
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        var image = UIImage(named: "Demo.jpg")

        layer1 = CALayer()
        layer1.frame = CGRect(x: 50, y: 100, width: 200, height: 200)
        layer1.contents = image?.cgImage
        self.view.layer.addSublayer(layer1)

//        layer2 = CALayer()
//        layer2.frame = CGRect()
    }
}
