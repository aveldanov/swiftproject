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
    
    @IBOutlet weak var tryAgainLabel: UILabel!
    
    
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
    @IBOutlet weak var resultView3row6: UIImageView!
    @IBOutlet weak var resultView0row7: UIImageView!
    @IBOutlet weak var resultView1row7: UIImageView!
    @IBOutlet weak var resultView2row7: UIImageView!
    @IBOutlet weak var resultView3row7: UIImageView!
    @IBOutlet weak var resultView0row8: UIImageView!
    @IBOutlet weak var resultView1row8: UIImageView!
    @IBOutlet weak var resultView2row8: UIImageView!
    @IBOutlet weak var resultView3row8: UIImageView!
    @IBOutlet weak var resultView0row9: UIImageView!
    @IBOutlet weak var resultView1row9: UIImageView!
    @IBOutlet weak var resultView2row9: UIImageView!
    @IBOutlet weak var resultView3row9: UIImageView!
    
    @IBOutlet weak var verifyRow0: UIImageView!
    @IBOutlet weak var verifyRow1: UIImageView!
    @IBOutlet weak var verifyRow2: UIImageView!
    @IBOutlet weak var verifyRow3: UIImageView!
    @IBOutlet weak var verifyRow4: UIImageView!
    @IBOutlet weak var verifyRow5: UIImageView!
    @IBOutlet weak var verifyRow6: UIImageView!
    @IBOutlet weak var verifyRow7: UIImageView!
    @IBOutlet weak var verifyRow8: UIImageView!
    @IBOutlet weak var verifyRow9: UIImageView!
    
   
    
    
    
    var counter = 0
    var row = 0
    let targetArr = [1,2,3,5]
    var pattern:[Int] = []
    
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
    var arrayVerNum = [0,0,0,0,0,0,0,0,0,0]
    
    
    var close = 0
    var exact = 0
    var colorPickNum = 0
    var currentNumber = 0
    var numberSelected = 0
    
    let length = 4
    var guesses = 9
    var array = [6,6,6,6]
    
    
    
    let numberImages = [#imageLiteral(resourceName: "Zero"),#imageLiteral(resourceName: "One"),#imageLiteral(resourceName: "Two"),#imageLiteral(resourceName: "Three"),#imageLiteral(resourceName: "Four"),#imageLiteral(resourceName: "Five"),#imageLiteral(resourceName: "Six"),#imageLiteral(resourceName: "Seven"),#imageLiteral(resourceName: "noneElement")]
    let verifyImages = [#imageLiteral(resourceName: "Verify"),#imageLiteral(resourceName: "verExact1"),#imageLiteral(resourceName: "verExact2"),#imageLiteral(resourceName: "verExact3"),#imageLiteral(resourceName: "verExact4"),#imageLiteral(resourceName: "verClose1"),#imageLiteral(resourceName: "verClose2"),#imageLiteral(resourceName: "verClose3"),#imageLiteral(resourceName: "verClose4"),#imageLiteral(resourceName: "verClose4Exact1"),#imageLiteral(resourceName: "verClose4Exact2"),#imageLiteral(resourceName: "verClose4Exact3"),#imageLiteral(resourceName: "verClose2Exact1"),#imageLiteral(resourceName: "verClose1Exact2"),#imageLiteral(resourceName: "verClose1Exact1")]
    
    
    let numbersOptions = ["ZERO":0,"ONE":1,"TWO":2,"THREE":3,"FOUR":4,"FIVE":5,"SIX":6,"SEVEN":7]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
        bingoLabel.alpha = 0
        tryAgainLabel.alpha = 0
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
        resultView0row5.image = #imageLiteral(resourceName: "noneElement")
        resultView1row5.image = #imageLiteral(resourceName: "noneElement")
        resultView2row5.image = #imageLiteral(resourceName: "noneElement")
        resultView3row5.image = #imageLiteral(resourceName: "noneElement")
        resultView0row6.image = #imageLiteral(resourceName: "noneElement")
        resultView1row6.image = #imageLiteral(resourceName: "noneElement")
        resultView2row6.image = #imageLiteral(resourceName: "noneElement")
        resultView3row6.image = #imageLiteral(resourceName: "noneElement")
        resultView0row7.image = #imageLiteral(resourceName: "noneElement")
        resultView1row7.image = #imageLiteral(resourceName: "noneElement")
        resultView2row7.image = #imageLiteral(resourceName: "noneElement")
        resultView3row7.image = #imageLiteral(resourceName: "noneElement")
        resultView0row8.image = #imageLiteral(resourceName: "noneElement")
        resultView1row8.image = #imageLiteral(resourceName: "noneElement")
        resultView2row8.image = #imageLiteral(resourceName: "noneElement")
        resultView3row8.image = #imageLiteral(resourceName: "noneElement")
        resultView0row9.image = #imageLiteral(resourceName: "noneElement")
        resultView1row9.image = #imageLiteral(resourceName: "noneElement")
        resultView2row9.image = #imageLiteral(resourceName: "noneElement")
        resultView3row9.image = #imageLiteral(resourceName: "noneElement")
        
        
        numberView0.image = #imageLiteral(resourceName: "Zero")
        numberView1.image = #imageLiteral(resourceName: "One")
        numberView2.image = #imageLiteral(resourceName: "Two")
        numberView3.image = #imageLiteral(resourceName: "Three")
        numberView4.image = #imageLiteral(resourceName: "Four")
        numberView5.image = #imageLiteral(resourceName: "Five")
        numberView6.image = #imageLiteral(resourceName: "Six")
        numberView7.image = #imageLiteral(resourceName: "Seven")

        
    }
    
    
    let baseURL = "https://www.random.org/integers/?num=4&min=0&max=7&col=1&base=10&format=plain&rnd=new"
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    
    @IBAction func buttonNumberClicked(_ sender: UIButton) {
        
        let selection = sender.currentTitle!
        numberSelected = numbersOptions[selection]!
        
        //        print(numberSelected)
        
    
            
            arrayNum[row][counter] = numberSelected
            //                        print(arrayNum[row])
            updateUI()
            
            counter = counter + 1
            
        
        
        
    }
    
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        
        
        
        
        
        //        print("RIGHT ", array)
        
     
        print("checkButton", arrayNum[row])
        
        array = arrayNum[row]
        
        getRandomArray(for: array)
        
        
            counter = 0
        
    }
    
    func getTypedInput()->[Int]{
        print("YOY",arrayNum[row])
        return arrayNum[row]
    }
    
    
    func verifyColor(close:Int, exact:Int)->Int{
        switch (close, exact) {
        case (0,0):
            colorPickNum = 0
        case (0,1):
            colorPickNum = 1
        case (0,2):
            colorPickNum = 2
        case (0,3):
            colorPickNum = 3
        case (0,4):
            colorPickNum = 4
        case (1,0):
            colorPickNum = 5
        case (2,0):
            colorPickNum = 6
        case (3,0):
            colorPickNum = 7
        case (4,0):
            colorPickNum = 8
        case (3,1):
            colorPickNum = 9
        case (2,2):
            colorPickNum = 10
        case (1,3):
            colorPickNum = 11
        case (1,2):
            colorPickNum = 12
        case (1,2):
            colorPickNum = 13
        case (1,1):
            colorPickNum = 14
            
            
        default:
            
            colorPickNum = 0
        }
        
        return colorPickNum
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
        resultView0row5.image = numberImages[arrayNum[5][0]]
        resultView1row5.image = numberImages[arrayNum[5][1]]
        resultView2row5.image = numberImages[arrayNum[5][2]]
        resultView3row5.image = numberImages[arrayNum[5][3]]
        resultView0row6.image = numberImages[arrayNum[6][0]]
        resultView1row6.image = numberImages[arrayNum[6][1]]
        resultView2row6.image = numberImages[arrayNum[6][2]]
        resultView3row6.image = numberImages[arrayNum[6][3]]
        resultView0row7.image = numberImages[arrayNum[7][0]]
        resultView1row7.image = numberImages[arrayNum[7][1]]
        resultView2row7.image = numberImages[arrayNum[7][2]]
        resultView3row7.image = numberImages[arrayNum[7][3]]
        resultView0row8.image = numberImages[arrayNum[8][0]]
        resultView1row8.image = numberImages[arrayNum[8][1]]
        resultView2row8.image = numberImages[arrayNum[8][2]]
        resultView3row8.image = numberImages[arrayNum[8][3]]
        resultView0row9.image = numberImages[arrayNum[9][0]]
        resultView1row9.image = numberImages[arrayNum[9][1]]
        resultView2row9.image = numberImages[arrayNum[9][2]]
        resultView3row9.image = numberImages[arrayNum[9][3]]
        
        
        
        
        
    }
    
    
    
    func updateVerify(){
        verifyRow0.image = verifyImages[arrayVerNum[0]]
        verifyRow1.image = verifyImages[arrayVerNum[1]]
        verifyRow2.image = verifyImages[arrayVerNum[2]]
        verifyRow3.image = verifyImages[arrayVerNum[3]]
        verifyRow4.image = verifyImages[arrayVerNum[4]]
        verifyRow5.image = verifyImages[arrayVerNum[5]]
        verifyRow6.image = verifyImages[arrayVerNum[6]]
        verifyRow7.image = verifyImages[arrayVerNum[7]]
        verifyRow8.image = verifyImages[arrayVerNum[8]]
        verifyRow9.image = verifyImages[arrayVerNum[9]]
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    func getRandomArray(for array:[Int]) {
        
        let urlString = baseURL
        
        if let url = URL(string: urlString) {
            
            let session = URLSession(configuration: .default)
            let task = session.dataTask(with: url) { (data, response, error) in
                if error != nil {
                    self.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    
                    let dataString = String(data: safeData, encoding: .utf8)
                    
                    let newPattern = Array(dataString!).filter({$0 != "\n"}).compactMap({$0.wholeNumberValue})
                    print(newPattern)
                    
                    self.didUpdateRandomArray(patternInput: newPattern, array: array)
                }
            }
            task.resume()
        }
    }
    
    
    func didUpdateRandomArray(patternInput: [Int], array:[Int]){
        
        while pattern == []{
            DispatchQueue.main.async {
                self.pattern = patternInput
            }
        
        }
            
             
        
    
                        print("GUESS",guesses)
                        running(input: pattern, array: array)
        
//        for attempt in 0...(guesses){
//            if guesses>0{
//                print("GUESS",guesses)
//                running(input: pattern, array: array)
//
//            }else{
//                print("The code was \(pattern)")
//                break
//            }
//
//        }
        
        
    }
    
    
    
    func didFailWithError(error: Error) {
        print(error)
    }
    
    func running(input:[Int], array:[Int]){
        let pattern = input
        
        print("array", array, "pattern", pattern)

        if guesses > 0{
            exact = 0
            close = 0
            
            
            
            // READ ARRAY AS INT
            //            let arrayNew = readLine()?
            //                .split {$0 == " "}
            //                .map {Int(String($0))!}
            //            print(arrayNew!)
            //
            //            array = arrayNew!
            
            
            let mappedPattern = pattern.map{($0,1)}
            var patternDict = Dictionary(mappedPattern, uniquingKeysWith: +)
            
            
            let mappedArray = array.map{($0,1)}
            let arrayDict = Dictionary(mappedArray, uniquingKeysWith: +)
            
            //        print(patternDict)
            //        print(arrayDict)
            
            
            
            
            // COMPARE and get CLOSE
            print("patternDic", patternDict)
            print("arrayDic", arrayDict)
            for item in patternDict.keys{
                
                //                    print("item pattern dict key", item)
                
                if (arrayDict[item] != nil){
                    //                            print("item",item," array", arrayDict[item])
                    //                print("Min:", min(patternDict[item]!,arrayDict[item]!))
                    close = close + min(patternDict[item]!,arrayDict[item]!)
                    //                print("close", close)
                    //                print("")
                }
                
            }
            
            //        print("CLOSE: \(close)")
            
            
            
            let zippped = Array(zip(pattern,array))
            
            //    print("Zipped \(zippped)")
            
            
            // combined array in pairs (1,1) etc
            for (val1, val2) in zip(pattern, array) {
                if val1 == val2{
                    exact = exact + 1
                    close = close - 1
                }
                //                    print("PRINTING: \(val1) has \(val2)")
            }
            
            
            colorPickNum = verifyColor(close: close, exact: exact)
            
            
            arrayVerNum[row] = colorPickNum
            print(arrayVerNum)
            
            DispatchQueue.main.async{
                self.updateVerify()
            }
            print(colorPickNum)
            print("")
            print("EXACT: \(exact)  CLOSE: \(close)")
            
            if exact==length{
                
                DispatchQueue.main.async{                self.bingoLabel.alpha = 0.8
                    print("You got it right!")
                    
                }
            }else{
                print("Continue, guesses rem: \(guesses)")
            }
            
            guesses = guesses - 1
            
        row = row + 1

        }else{
            
            DispatchQueue.main.async{
                self.tryAgainLabel.alpha = 0.8
                
            }
            print("DONE")
            print("Answer: \(pattern)")

        }
        
    }
    
    
    
    

    
    
    
}




