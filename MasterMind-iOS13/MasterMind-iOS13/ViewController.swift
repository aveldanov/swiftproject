//
//  ViewController.swift
//  MasterMind-iOS13
//
//  Created by Veldanov, Anton on 1/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var bingoLabel: UILabel!
    @IBOutlet weak var numberView0: UIImageView!
    @IBOutlet weak var numberView1: UIImageView!
    @IBOutlet weak var numberView2: UIImageView!
    @IBOutlet weak var numberView3: UIImageView!
    @IBOutlet weak var numberView4: UIImageView!
    @IBOutlet weak var numberView5: UIImageView!
    @IBOutlet weak var numberView6: UIImageView!
    @IBOutlet weak var numberView7: UIImageView!
    
    @IBOutlet weak var resultView0row0: UIImageView!
    @IBOutlet weak var resultView1row0: UIImageView!
    @IBOutlet weak var resultView2row0: UIImageView!
    @IBOutlet weak var resultView3row0: UIImageView!
    @IBOutlet weak var resultView0row1: UIImageView!
    @IBOutlet weak var resultView1row1: UIImageView!
    @IBOutlet weak var resultView2row1: UIImageView!
    @IBOutlet weak var resultView3row1: UIImageView!
    @IBOutlet weak var resultView0row2: UIImageView!
    @IBOutlet weak var resultView1row2: UIImageView!
    @IBOutlet weak var resultView2row2: UIImageView!
    @IBOutlet weak var resultView3row2: UIImageView!
    @IBOutlet weak var resultView0row3: UIImageView!
    @IBOutlet weak var resultView1row3: UIImageView!
    @IBOutlet weak var resultView2row3: UIImageView!
    @IBOutlet weak var resultView3row3: UIImageView!
    @IBOutlet weak var resultView0row4: UIImageView!
    @IBOutlet weak var resultView1row4: UIImageView!
    @IBOutlet weak var resultView2row4: UIImageView!
    @IBOutlet weak var resultView3row4: UIImageView!
    @IBOutlet weak var resultView0row5: UIImageView!
    @IBOutlet weak var resultView1row5: UIImageView!
    @IBOutlet weak var resultView2row5: UIImageView!
    @IBOutlet weak var resultView3row5: UIImageView!
    @IBOutlet weak var resultView0row6: UIImageView!
    @IBOutlet weak var resultView1row6: UIImageView!
    @IBOutlet weak var resultView2row6: UIImageView!
    
    
    
    
    
    
    
    
    
    
    
    
    var counter = 0
    var row = 0
    let targetArr = [1,2,3,5]
    var arrayNum = [
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8],
        [8,8,8,8]
    ]
    
    var currentNumber = 0
    var numberSelected = 0
    //    var currentView: UIImageView
    
    let numberImages = [#imageLiteral(resourceName: "Zero"),#imageLiteral(resourceName: "One"),#imageLiteral(resourceName: "Two"),#imageLiteral(resourceName: "Three"),#imageLiteral(resourceName: "Four"),#imageLiteral(resourceName: "Five"),#imageLiteral(resourceName: "Six"),#imageLiteral(resourceName: "Seven"),#imageLiteral(resourceName: "noneElement")]
    
    let numbersOptions = ["ZERO":0,"ONE":1,"TWO":2,"THREE":3,"FOUR":4,"FIVE":5,"SIX":6,"SEVEN":7]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        bingoLabel.alpha = 0
        resultView0row0.image = #imageLiteral(resourceName: "noneElement")
        resultView1row0.image = #imageLiteral(resourceName: "noneElement")
        resultView2row0.image = #imageLiteral(resourceName: "noneElement")
        resultView3row0.image = #imageLiteral(resourceName: "noneElement")
        resultView0row1.image = #imageLiteral(resourceName: "noneElement")
        resultView1row1.image = #imageLiteral(resourceName: "noneElement")
        resultView2row1.image = #imageLiteral(resourceName: "noneElement")
        resultView3row1.image = #imageLiteral(resourceName: "noneElement")
        resultView0row2.image = #imageLiteral(resourceName: "noneElement")
        resultView1row2.image = #imageLiteral(resourceName: "noneElement")
        resultView2row2.image = #imageLiteral(resourceName: "noneElement")
        resultView3row2.image = #imageLiteral(resourceName: "noneElement")
        resultView0row3.image = #imageLiteral(resourceName: "noneElement")
        resultView1row3.image = #imageLiteral(resourceName: "noneElement")
        resultView2row3.image = #imageLiteral(resourceName: "noneElement")
        resultView3row3.image = #imageLiteral(resourceName: "noneElement")
        resultView0row4.image = #imageLiteral(resourceName: "noneElement")
        resultView1row4.image = #imageLiteral(resourceName: "noneElement")
        resultView2row4.image = #imageLiteral(resourceName: "noneElement")
        resultView3row4.image = #imageLiteral(resourceName: "noneElement")
        
    }
    
    
    @IBAction func buttonNumberClicked(_ sender: UIButton) {
        
        let selection = sender.currentTitle!
        numberSelected = numbersOptions[selection]!
        
        print(numberSelected)
        
        if counter < 4{
            
            arrayNum[row][counter] = numberSelected
            print(arrayNum)
            updateUI()
            
            counter = counter + 1
            
        }else{
            row = row + 1
            counter = 0
            print("ELSE")
            updateUI()
        }
        
        
    }
    
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        
        print(arrayNum)
        if arrayNum[0].contains(5){
            print("Yay")
            bingoLabel.alpha = 1
            row = row + 1
            counter = 0
            
        }else{
            row = row + 1
            counter = 0
        }
    }
    
    
    
    
    
    
    
    
    func updateUI(){
        resultView0row0.image = numberImages[arrayNum[0][0]]
        resultView1row0.image = numberImages[arrayNum[0][1]]
        resultView2row0.image = numberImages[arrayNum[0][2]]
        resultView3row0.image = numberImages[arrayNum[0][3]]
        resultView0row1.image = numberImages[arrayNum[1][0]]
        resultView1row1.image = numberImages[arrayNum[1][1]]
        resultView2row1.image = numberImages[arrayNum[1][2]]
        resultView3row1.image = numberImages[arrayNum[1][3]]
        resultView0row2.image = numberImages[arrayNum[2][0]]
        resultView1row2.image = numberImages[arrayNum[2][1]]
        resultView2row2.image = numberImages[arrayNum[2][2]]
        resultView3row2.image = numberImages[arrayNum[2][3]]
        resultView0row3.image = numberImages[arrayNum[3][0]]
        resultView1row3.image = numberImages[arrayNum[3][1]]
        resultView2row3.image = numberImages[arrayNum[3][2]]
        resultView3row3.image = numberImages[arrayNum[3][3]]
        resultView0row4.image = numberImages[arrayNum[4][0]]
        resultView1row4.image = numberImages[arrayNum[4][1]]
        resultView2row4.image = numberImages[arrayNum[4][2]]
        resultView3row4.image = numberImages[arrayNum[4][3]]
        
        
    }
    
    
    
    
}

