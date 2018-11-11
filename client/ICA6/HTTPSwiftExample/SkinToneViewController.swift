//
//  SkinToneViewController.swift
//  HTTPSwiftExample
//
//  Created by Brandon McFarland on 11/9/18.
//  Copyright © 2018 Eric Larson. All rights reserved.
//

import Foundation
import UIKit
import AVFoundation

//let SERVER_URL = "http://10.8.112.246:8000"


class SkinToneViewController: UIViewController {
    
    
    // Declare outlets and global vars
    @IBOutlet weak var skinToneSegmentedControl: UISegmentedControl!
    @IBOutlet weak var pic0: UIButton!
    @IBOutlet weak var pic1: UIButton!
    @IBOutlet weak var pic2: UIButton!
    @IBOutlet weak var pic3: UIButton!
    @IBOutlet weak var pic4: UIButton!
    @IBOutlet weak var calibrateButton: UIButton!
    @IBOutlet weak var cancelButton: UIButton!
    @IBOutlet weak var modelSegmentedControl: UISegmentedControl!
    var gradientLayer: CAGradientLayer!
    
    // Define view background color
    func createGradientLayer() {
        gradientLayer = CAGradientLayer()
        gradientLayer.frame = self.view.bounds
        gradientLayer.colors = [UIColor.gray.cgColor, UIColor.black.cgColor]
        self.view.layer.insertSublayer(gradientLayer, at: 0)
    }
    
    // Show calibration elements
    @IBAction func startCalibration(_ sender: UIButton) {
        self.calibrateButton.isHidden = true
        self.pic0.isHidden = false
        self.pic1.isHidden = false
        self.pic2.isHidden = false
        self.pic3.isHidden = false
        self.pic4.isHidden = false
        self.cancelButton.isHidden = false
        self.modelSegmentedControl.isHidden = false
    }
    
    // Hide calibration elements
    @IBAction func cancelCalibration(_ sender: UIButton) {
        self.calibrateButton.isHidden = false
        self.pic0.isHidden = true
        self.pic1.isHidden = true
        self.pic2.isHidden = true
        self.pic3.isHidden = true
        self.pic4.isHidden = true
        self.cancelButton.isHidden = true
        self.modelSegmentedControl.isHidden = true
    }
    
    // Set the view background
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        createGradientLayer()
    }
    
//    prevent sending bad data with modal
//    @IBAction func confirmSend(_ sender: Any) {
//
//    }
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    

    
}

