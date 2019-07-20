//
//  ViewController.swift
//  w3l2
//
//  Created by 黃翊 on 2019/7/20.
//  Copyright © 2019 黃翊. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var counter = 0.0
    var timer:Timer!
    var speed = 0.0
    
    @IBOutlet weak var segment: UISegmentedControl!
    
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        let newView = UIView(frame: CGRect(x: 0, y: 0, width: 100, height: 100))
        newView.center = self.view.center
        newView.backgroundColor = UIColor.red
        newView.transform = CGAffineTransform(rotationAngle: 0)
        view.addSubview(newView)
        timer = Timer.scheduledTimer(withTimeInterval: 0.03, repeats: true, block: { (timer) in
        
        self.rotateView(targateView: newView)
            
            
        })
        
    }
    
    func rotateView(targateView:UIView){
        let angle = counter * Double.pi / 180
        targateView.transform = CGAffineTransform(rotationAngle: CGFloat(angle))
        counter += speed
        
    }
    
    
    @IBAction func sliderAction(_ sender: UISlider) {
        speed = Double(sender.value)
        print(sender.value)
    }
    
    }
    





