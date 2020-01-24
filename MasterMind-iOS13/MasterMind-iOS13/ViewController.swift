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
    
    @IBOutlet weak var resultView0row0: UIImageView!
    @IBOutlet weak var resultView1row0: UIImageView!
    @IBOutlet weak var resultView2row0: UIImageView!
    @IBOutlet weak var resultView3row0: UIImageView!
    @IBOutlet weak var resultView0row1: UIImageView!
    @IBOutlet weak var resultView1row1: UIImageView!
    @IBOutlet weak var resultView2row1: UIImageView!
    @IBOutlet weak var resultView3row1: UIImageView!
    
    
    
    
    
    var counter = 0
    var row = 0
    let targetArr = [1,2,3,5]
    var arrayNum = [[8,8,8,8],[8,8,8,8]]
    
    var currentNumber = 0
    var numberSelected = 0
    //    var currentView: UIImageView
    
    let numberImages = [#imageLiteral(resourceName: "Zero"),#imageLiteral(resourceName: "One"),#imageLiteral(resourceName: "Two"),#imageLiteral(resourceName: "Three"),#imageLiteral(resourceName: "Four"),#imageLiteral(resourceName: "Five"),#imageLiteral(resourceName: "Six"),#imageLiteral(resourceName: "Seven"),#imageLiteral(resourceName: "noneElement")]
    
    let numbersOptions = ["ZERO":0,"ONE":1,"TWO":2,"THREE":3,"FOUR":4,"FIVE":5,"SIX":6,"SEVEN":7]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        resultView0row0.image = #imageLiteral(resourceName: "noneElement")
        resultView1row0.image = #imageLiteral(resourceName: "noneElement")
        resultView2row0.image = #imageLiteral(resourceName: "noneElement")
        resultView3row0.image = #imageLiteral(resourceName: "noneElement")
        
    }
    
    
    @IBAction func buttonNumberClicked(_ sender: UIButton) {
        
        let selection = sender.currentTitle!
        numberSelected = numbersOptions[selection]!
        
        
        print(numberSelected)
        
        if counter < 4{
            
            print("HERE")
            arrayNum[row][counter] = numberSelected
            
//            print(counter)
            print(arrayNum)
            updateUI()
            counter = counter + 1

        }else{
            print("ELSE")
            row = row + 1
            counter = 0

        }
        
        
        
        
        
        
        
        
    }
    
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        
        print(arrayNum)
        if arrayNum[0].contains(5){
            print("Yay")
        }else{
            print("NO")
        }
    }
    
    
    
    
    
    func moveNextButton() -> Int? {
        let count = 0
        
        return count + 1
    }
    
    
    func updateUI(){
        resultView0row0.image = numberImages[arrayNum[row][0]]
        resultView1row0.image = numberImages[arrayNum[row][1]]
        resultView2row0.image = numberImages[arrayNum[row][2]]
        resultView3row0.image = numberImages[arrayNum[row][3]]
        
        
    }
    
    func checkAnswer(){
        
        
    }
    
    func addCounter(){
        
        
        
    }
    
    
}

