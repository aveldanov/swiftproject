//
//  ViewController.swift
//  MasterMind-iOS13
//
//  Created by Veldanov, Anton on 1/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var numberView0: UIImageView!
    @IBOutlet weak var numberView1: UIImageView!
    @IBOutlet weak var numberView2: UIImageView!
    @IBOutlet weak var numberView3: UIImageView!
    @IBOutlet weak var numberView4: UIImageView!
    @IBOutlet weak var numberView5: UIImageView!
    @IBOutlet weak var numberView6: UIImageView!
    @IBOutlet weak var numberView7: UIImageView!
    
    
    
    @IBOutlet weak var resultView0: UIImageView!
    @IBOutlet weak var resultView1: UIImageView!
    @IBOutlet weak var resultView2: UIImageView!
    @IBOutlet weak var resultView3: UIImageView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberView0.image = #imageLiteral(resourceName: "Zero")
        numberView1.image = #imageLiteral(resourceName: "One")
        numberView2.image = #imageLiteral(resourceName: "Two")
        numberView3.image = #imageLiteral(resourceName: "Three")

    }
    
    
    @IBAction func buttonZeroClicked(_ sender: UIButton) {
        print("ZERO")
    }
    

    @IBAction func buttonOneClicked(_ sender: UIButton) {
        
        resultView0.image = #imageLiteral(resourceName: "One")
        
    }
    
    
    @IBAction func buttonTwoClicked(_ sender: UIButton) {
    }
    
    
    
    
    
    
}

