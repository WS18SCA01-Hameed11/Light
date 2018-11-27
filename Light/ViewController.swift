//
//  ViewController.swift
//  Light
//
//  Created by Hameed Abdullah on 11/19/18.
//  Copyright © 2018 Hameed Abdullah. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var lightButton: UIButton!
    
    var brightness: CGFloat = 1.0  //1.0 is maximum, 0.0 is minimum
    
   var lightOn = true
    

    override func viewDidLoad() {
        super.viewDidLoad()
       
    }
    
    @objc func buttonTapped() {
        print("Button Tapped")
        view.backgroundColor = .yellow
    }
    
//    @IBAction func onAndOffTapped(_ sender: Any) {
//    
//        //lightOn = !lightOn
//        updateUI()
//    }
    
    
    @IBAction func swipeDown(_ sender: UISwipeGestureRecognizer) {
        print("SwipeDown")
        brightness -= 0.1
        updateUI()
    }
    
    @IBAction func swipeUp(_ sender: UISwipeGestureRecognizer) {
        print("SwipeUp")
        brightness += 0.1
        updateUI()
    }
    
    func updateUI() {
        view.backgroundColor = UIColor(red: brightness, green: brightness, blue: brightness, alpha: 1.0)
        
//        if lighOn {
//            view.backgroundColor = .white
//        } else {
//            view.backgroundColor = .black
//        }
        
    }
    
 

  
    
    
}

