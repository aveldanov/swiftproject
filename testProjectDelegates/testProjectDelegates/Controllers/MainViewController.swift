//
//  ViewController.swift
//  testProjectDelegates
//
//  Created by Veldanov, Anton on 1/15/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class MainViewController: UIViewController {

    
    @IBOutlet weak var chooseButton: UIButton!
    
    let value:String = "RESULT"
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .blue
        
    }

    
    
    
    
    @IBAction func chooseButtonClicked(_ sender: UIButton) {
        
        
        let secondVC = SecondViewController()
        
        secondVC.valueSecond = "RESULT"
        
        self.present(secondVC, animated: true, completion: nil)
        
    }
    

}

