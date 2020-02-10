//
//  ViewController.swift
//  MasterMind-iOS13
//
//  Created by Veldanov, Anton on 1/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: - Creating outlets for the elemenets
    
    @IBOutlet weak var bingoLabel: UILabel!
    @IBOutlet weak var tryAgainLabel: UILabel!
    @IBOutlet weak var progressVIewBar: UIProgressView!
    @IBOutlet weak var checkButtonView: UIButton!
    @IBOutlet weak var restartButtonView: UIButton!
    
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
    
    
    
    //MARK: - set inital arguments
    
    var counter = 0 //count click within a row
    var row = 0 //count row number
    let targetArr = [1,2,3,5] // used for testing when could not figure async API reading
    var pattern:[Int] = []  // Computer generated pattern init
    
    
    //MARK: - using arrays as data storage and initial placeholder for numbers
    
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
    
    var close = 0 //guessed the number but not locatoin
    var exact = 0 // guessed the number and location
    var colorPickNum = 0 // number to associate with the hint colorpick
    var currentNumber = 0
    var numberSelected = 0
    
    let length = 4 // length of the row
    var guesses = 9 //number of guesses minus 1
    var array = [6,6,6,6] // used for testing of user input
    
    var totalTime = 90
    var secondsPassed = 0
    
    //MARK: - images literal
    let numberImages = [#imageLiteral(resourceName: "Zero"),#imageLiteral(resourceName: "One"),#imageLiteral(resourceName: "Two"),#imageLiteral(resourceName: "Three"),#imageLiteral(resourceName: "Four"),#imageLiteral(resourceName: "Five"),#imageLiteral(resourceName: "Six"),#imageLiteral(resourceName: "Seven"),#imageLiteral(resourceName: "noneElement")]
    let verifyImages = [#imageLiteral(resourceName: "Verify"),#imageLiteral(resourceName: "verExact1"),#imageLiteral(resourceName: "verExact2"),#imageLiteral(resourceName: "verExact3"),#imageLiteral(resourceName: "verExact4"),#imageLiteral(resourceName: "verClose1"),#imageLiteral(resourceName: "verClose2"),#imageLiteral(resourceName: "verClose3"),#imageLiteral(resourceName: "verClose4"),#imageLiteral(resourceName: "verClose4Exact1"),#imageLiteral(resourceName: "verClose4Exact2"),#imageLiteral(resourceName: "verClose4Exact3"),#imageLiteral(resourceName: "verClose2Exact1"),#imageLiteral(resourceName: "verClose1Exact2"),#imageLiteral(resourceName: "verClose1Exact1")]
    
    //MARK: - numbers assiciated with user input to build an array
    
    let numbersOptions = ["ZERO":0,"ONE":1,"TWO":2,"THREE":3,"FOUR":4,"FIVE":5,"SIX":6,"SEVEN":7]
    
 
    var arrayPlayer = [Player]()
    
    var currentPlayer: Player?   // fist player assigned by default

    
    
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
        
        
        numberView0.image = #imageLiteral(resourceName: "input8")
        numberView1.image = #imageLiteral(resourceName: "input1")
        numberView2.image = #imageLiteral(resourceName: "input2")
        numberView3.image = #imageLiteral(resourceName: "input3")
        numberView4.image = #imageLiteral(resourceName: "input4")
        numberView5.image = #imageLiteral(resourceName: "input5")
        numberView6.image = #imageLiteral(resourceName: "input6")
        numberView7.image = #imageLiteral(resourceName: "input7")
        
        
        
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(gameOver), userInfo: nil, repeats: true)
        
        //        progressVIewBar.progress = 1.0
        
        checkButtonView.layer.cornerRadius = 25.0
        restartButtonView.layer.cornerRadius = 25.0
        
        
        let player1 = Player(score: 0, name: "Anton")
        let player2 = Player(score: 0, name: "John")
        
        arrayPlayer = [player1,player2]
        
        currentPlayer = arrayPlayer[0]
        
        
    }
    
    
    
    
    
    
    
    
    @objc func gameOver()
    {
        if secondsPassed < totalTime{
            print("\(secondsPassed) seconds")
            secondsPassed += 1
            
            let percentageProgress = Float(secondsPassed)/Float(totalTime)
            progressVIewBar.progress = percentageProgress
        }else{
            tryAgainLabel.text = "Out of time"
            tryAgainLabel.alpha = 1
        }
    }
    
    
    
    //MARK: - API Url  - random.org to generate random array
    let baseURL = "https://www.random.org/integers/?num=4&min=0&max=7&col=1&base=10&format=plain&rnd=new"
    
    @IBAction func restartClicked(_ sender: UIButton) {
        
        counter = 0
        row = 0
        arrayNum = [
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
        arrayVerNum = [0,0,0,0,0,0,0,0,0,0]
        close = 0 //guessed the number but not locatoin
        exact = 0 // guessed the number and location
        colorPickNum = 0 // number to associate with the hint colorpick
        currentNumber = 0 //
        numberSelected = 0 //Selected number
        guesses = 9 // Number of guesses - 1
        totalTime = 90 // Time alloted in seconds
        secondsPassed = 0 // Seconds passed for the timer func
        updateVerify() // Update UI
        updateUI() // Update UI
        tryAgainLabel.alpha = 0  // Transparency settings for the labels
        tryAgainLabel.text = "" // Initial input for the labels
        bingoLabel.alpha = 0 // Transparency settings
        
        
        
    }
    
    
    
    //MARK: - IBAction for number's clicked
    
    @IBAction func buttonNumberClicked(_ sender: UIButton) {
        //MARK: - reading current sender to assign the clicked number
        
        let selection = sender.currentTitle!
        // Matching selections titles to numvers
        numberSelected = numbersOptions[selection]!
        
        //        print(numberSelected)
        // Assgign selected number to current row/counter position
        arrayNum[row][counter] = numberSelected
        //                        print(arrayNum[row])
        
        //MARK: - Updating UI (see functions below)
        updateUI()
        //MARK: - moving to the next number
        counter = counter + 1
        
        
        
    }
    
    //MARK: - Verify the guess
    
    @IBAction func checkButtonPressed(_ sender: UIButton) {
        print("checkButton", arrayNum[row])
        
        //MARK: - assigning current row to the array to be used as input for the calculations
        array = arrayNum[row]
        
        //MARK: - invoking the function that contaings API data and passining user input too
        getRandomArray(for: array)
        //MARK: - resetting counter to 0 to start assigning clicked digits from the left of each row
        counter = 0
    }
    
    
    func getTypedInput()->[Int]{
        print("Testing arrayNum[row]",arrayNum[row])
        return arrayNum[row]
    }
    
    //MARK: - Verifying various combination of possible answers to be used for the color-hint references
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
        case (2,1):
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
    
    
    
    //MARK: - Updating numbers in rows (I could't be any more inefficient :/ )
    
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
    
    
    //MARK: - upding UI of the color-hints
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
    
    
    
    //MARK: - Async function to GET API data and convert it into an array
    
    func getRandomArray(for array:[Int]) {
        
        let urlString = baseURL
        
        
        //MARK: - Use optional binding to unwrap the URL that's created from the urlString
        if let url = URL(string: urlString) {
            
            //MARK: - Create a new URLSession object with default configuration.
            let session = URLSession(configuration: .default)
            
            //MARK: - Create a new data task for the URLSession
            let task = session.dataTask(with: url) { (data, response, error) in
                // error handling
                if error != nil {
                    
                    let veryNewPatter = self.getARandomArrayLocally()
                    self.didUpdateRandomArray(patternInput: veryNewPatter, array: array)
                    //                    self.didFailWithError(error: error!)
                    return
                }
                
                if let safeData = data {
                    //MARK: - Format the data
                    let dataString = String(data: safeData, encoding: .utf8)
                    
                    let newPattern = Array(dataString!).filter({$0 != "\n"}).compactMap({$0.wholeNumberValue})
                    print(newPattern)
                    //MARK: - pass along the necessary data.
                    
                    self.didUpdateRandomArray(patternInput: newPattern, array: array)
                }
            }
            task.resume()
        }
    }
    
    
    
    //MARK: - Update the Pattern array based on API data
    
    func didUpdateRandomArray(patternInput: [Int], array:[Int]){
        //MARK: - verifying that patter is not empty to stick to current pattern
        while pattern == []{
            DispatchQueue.main.async {
                self.pattern = patternInput
            }
            
        }
        
        
        print("GUESS",guesses)
        // Invoking the main function:
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
    
    
    func getARandomArrayLocally(numberItems:Int = 4)->[Int]{
        
        var arrayInput = [Int]()
        
        
        for _ in 0..<numberItems{
            arrayInput.append(Int.random(in: 0...7))
        }
        
        return arrayInput
    }
    
    
    
    
    
    
    
    
    //MARK: - API output errors verification
    func didFailWithError(error: Error) {
        print(error)
    }
    
    //MARK: - The heart of the app -  all logic is inside the running() with API generated pattern = input and user numbers = array
    func running(input:[Int], array:[Int]){
        let pattern = input
        
        //        print("array", array, "pattern", pattern)
        
        if guesses > 0{
            exact = 0
            close = 0
            
            
            //MARK: - Used this initially as a command line input for testing
            
            // READ ARRAY AS INT
            //            let arrayNew = readLine()?
            //                .split {$0 == " "}
            //                .map {Int(String($0))!}
            //            print(arrayNew!)
            //
            //            array = arrayNew!
            
            
            let mappedPattern = pattern.map{($0,1)} //((1:1),(2:1),(3:1),(4:1))
            let patternDict = Dictionary(mappedPattern, uniquingKeysWith: +) // [3:1, 4:3]
            
            
            let mappedArray = array.map{($0,1)}
            let arrayDict = Dictionary(mappedArray, uniquingKeysWith: +)
            
            //print(patternDict)
            //print(arrayDict)
            
            
            //MARK: - COMPARE two dict and get number of CLOSE(guessed number but not the position) items
            print("patternDic", patternDict)
            print("arrayDic", arrayDict)
            for item in patternDict.keys{
                
                //print("item pattern dict key", item)
                
                if (arrayDict[item] != nil){
                    //print("item",item," array", arrayDict[item])
                    //print("Min:", min(patternDict[item]!,arrayDict[item]!))
                    close = close + min(patternDict[item]!,arrayDict[item]!)
                    //print("close", close)
                    //print("")
                }
                
            }
            
            //        print("CLOSE: \(close)")
            
            //MARK: - combined arrays of pattern and array in pairs e.g (1,1) and check for matches to identify Exact match (number and position)
            let zippped = Array(zip(pattern,array))
            
            print("Zipped \(zippped)")
            
            for (val1, val2) in zip(pattern, array) {
                if val1 == val2{
                    exact = exact + 1
                    close = close - 1
                }
                //                    print("PRINTING: \(val1) has \(val2)")
            }
            
            //MARK: - updating UI paramenters to update UI. Pick option using verifyColor func
            colorPickNum = verifyColor(close: close, exact: exact)
            //MARK: - Update array of ver numbers
            arrayVerNum[row] = colorPickNum
            //            print("ARRAY VER NUM:",arrayVerNum)
            
            DispatchQueue.main.async{
                self.updateVerify()
            }
            print(colorPickNum)
            print("")
            print("EXACT: \(exact)  CLOSE: \(close)")
            
            
        
            
            
            
            if exact==length{
                
                
                
                
                DispatchQueue.main.async{
                    
                    if let currentPlayer = self.currentPlayer{
                        if currentPlayer == self.arrayPlayer[0]{
                                          self.currentPlayer = self.arrayPlayer[1]
                                          
                                      }else{
                                          self.currentPlayer = self.arrayPlayer[0]
                                      }
                                      
                    }
                    
                    
                    
                    
                    self.bingoLabel.alpha = 0.8
                    
                    print("CurrentPlayer:  \(self.currentPlayer?.name)")
                    
                    print("You got it right!")
                    
                    
                }
            }else{
                print("Continue, guesses rem: \(guesses)")
            }
            
            //MARK: - reducing the number of guesses left
            guesses = guesses - 1
            
            //MARK: - moving input to the next row
            row = row + 1
            
        }else{
            
            DispatchQueue.main.async{
                self.tryAgainLabel.alpha = 0.8
                
                          if let currentPlayer = self.currentPlayer{
                if currentPlayer == self.arrayPlayer[0]{
                                  self.currentPlayer = self.arrayPlayer[1]
                                  
                              }else{
                                  self.currentPlayer = self.arrayPlayer[0]
                              }
                              
            }
                
                print("CurrentPlayer: ", self.currentPlayer?.name)
            }
            
            print("DONE")
            print("Answer: \(pattern)")
            
        }
    }
}
















































// Anton Veldanov 2020 All Rights Reserved
