//
//  ViewController.swift
//  countDownTimer
//
//  Created by Veldanov, Anton on 11/23/19.
//  Copyright © 2019 Veldanov, Anton. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    
    
    
    @IBOutlet weak var timerLabel: UILabel!
    
    var seconds = 60
    var timer = Timer()
    var isTimerRunning = false
    
    
    
    
    @IBAction func startButtonTapped(_ sender: UIButton) {
        
        runTimer()
    }
    
    func runTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    }
    
    
    
    
    
    @IBAction func pauseButtonTapped(_ sender: UIButton) {
    }
    
    
    @IBAction func resetButtonTapped(_ sender: UIButton) {
    }
    
    
    
    @objc func updateTimer() {
        seconds -= 1
        timerLabel.text = "\(seconds)"
    }
    
    
    
    
    
    override func viewDidLoad() {
        super .viewDidLoad()
    }
    
    
    
}

