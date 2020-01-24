//
//  main.swift
//  MasterMindPractice
//
//  Created by Veldanov, Anton on 1/23/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation

let length = 4
var guesses = 2
let pattern = [1,2,3,4]
var array = [1,2,2,4]
var close = 0
var exact = 0
var closeCount = 0
var letter = "5"
let savedExact = 0




//print(Int(letter)!+3)

func running(){
    
//    print("length : \(length)")
    
    while exact < length && guesses > 0{
        exact = 0
            close = 0
        
        
        //    let array = readLine()?
        //        .split {$0 == " "}
        //        .map (String.init)
        //    print(array!)
        
        
        //    let input = readLine()
        //    if let input = input {
        //        let inputNumberCharacters = input.characters.split(separator: " ")
        //        let numbers = inputNumberCharacters.map { Int(String($0))! }
        //        print(numbers)
        //    }
        
        
        // READ ARRAY AS INT
        let arrayNew = readLine()?
            .split {$0 == " "}
            .map {Int(String($0))!}
        print(arrayNew!)
        
        array = arrayNew!
        
        
        let mappedPattern = pattern.map{($0,1)}
        var patternDict = Dictionary(mappedPattern, uniquingKeysWith: +)
        
        
        let mappedArray = array.map{($0,1)}
        let arrayDict = Dictionary(mappedArray, uniquingKeysWith: +)
        
//        print(patternDict)
//        print(arrayDict)
        
        
        
        
        // COMPARE and get CLOSE
        for item in patternDict.keys{
            //        print(item)
            
            if (arrayDict[item] != nil){
                //            print("ITEM:  \(item)")
                close = close + min(patternDict[item]!,arrayDict[item]!)
            }
            
        }
        
//        print("CLOSE: \(close)")
        
        
        
        let zippped = Array(zip(pattern,array))
        
        //    print("Zipped \(zippped)")
        
        
        // combined array in pairs (1,1) etc
        for (val1, val2) in zip(pattern, array) {
            if val1 == val2{
                exact = exact + 1
                close = close - exact
            }
            //        print("PRINTING: \(val1) has \(val2)")
        }
        
        
        for item in array{
            
        }
        
        let savedExact = exact
        
//        print("EXACT: \(exact)")
        
        print("EXACT: \(exact)  CLOSE: \(close)")
        
        // Example merging two dict
        //    var existing = ["one": 1, "two": 2, "three": 1]
        //    let newData = ["one":2, "two":2]
        //
        //
        //    existing.merge(newData) { (current, _) in current }
        //    print(existing)
        
        
        
        
        
        //    for digit in patternDict{
        //        print(digit)
        //
        //        print(patternDict[digit.key])
        ////        print(arrayDict[digit.key])
        //
        //        if(patternDict[digit.key] == arrayDict[digit.key]){
        //
        //        let small = min(patternDict[digit.key]!, arrayDict[digit.key]!)
        //            close = close + small
        //        }
        //    }
        
        
        
        //
        //    for item in 0...3{
        //
        //        close = pattern.filter{$0 == array[item] }.count
        //        if close == 0 {
        //            print("ZERO")
        //        }else{
        //            closeCount += 1
        //            print("non-zero")
        //        }
        //
        //    }
        
        //    if let stringArray = array {
        //        print(stringArray)
        //
        //    }
        
        
        //print(closeCount)
        
        guesses = guesses - 1
    
        
        
        print("Continue, guesses rem: \(guesses)")
        print("")

    }

}

//while guesses > 0 && (savedExact == length){
//
//    print(savedExact)
//    if (length != savedExact){
//    running()
//
//    }else{
//        print("DONE")
//    }
//
//}
//print("GAME OVER the code was \(pattern)")

for attempt in 0...(guesses-1){
    if (exact < length){
        running()
        print("The code was \(pattern)")
break
    }else{
        print("GAME OVER")
        break
    }
}




let arr2 = [1,2,3,5,5]

let count = arr2.filter{$0 == 5 }.count
//print(count)

