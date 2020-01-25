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
var dataArr = ""
var newArr: [Int] = []
var extArr:[Int] = []


//var closeCount = 0
//var letter = "5"
//let savedExact = 0

let urlString = "https://www.random.org/integers/?num=4&min=0&max=7&col=1&base=10&format=plain&rnd=new"
print("HELLO")

func performRequest(urlString:String){
    //    var newArr = [Int]()
    
    // 1. Create URL
    if let url = URL(string: urlString){
        // 2. Create Session
        let session = URLSession(configuration: .default)
        // 3. Give session a task (completion handler for async)
        // as soon as the task is complete the completetion handler is called
        // closure(opt2) - anonymouse function
        //      let task =  session.dataTask(with: url, completionHandler: handle(data:response:error:))
        let task = session.dataTask(with: url){
            (data, response, error) in
            if error != nil{
                print(error!)
                return
            }
            if let safeData = data{
                let dataString = String(data: safeData, encoding: .utf8)
//                newArr = Array(dataString!).filter({$0 != "\n"}).compactMap({$0.wholeNumberValue})
                
                let input = getData(randomData: safeData)
                useData(input: input)
            }
            
        }
        
        // 4. Start a task (it is start not resume)
        
        task.resume()
    }
}





func getData(randomData: Data) -> [Int]{
    let dataString = String(data: randomData, encoding: .utf8)

    newArr = Array(dataString!).filter({$0 != "\n"}).compactMap({$0.wholeNumberValue})

    print("Inside get data:", newArr)

return newArr
}




func useData(input:[Int]){
    print("Input in useData",input)
    DispatchQueue.main.async {
             extArr = input
         }
    print("inside useData",extArr)

}


//let superNew = useData(input: [3])

print("EXT",extArr)
performRequest(urlString: urlString)



//// request handler for async req from API
//func handle(data:Data?, response: URLResponse?, error: Error?){
//    if error != nil{
//        print(error!)
//        return
//    }
//
//    if let safeData = data{
//        let dataString = String(data: safeData, encoding: .utf8)
//        print(dataString)
//    }
//
//
//}

//let str = "123456789"
//let intArray = map(str){ String($0).toInt() ?? 0 }
//
//print(intArray)



//!!!!!!!!!!!!!!
//performRequest(urlString: urlString)

//print(Int(letter)!+3)

func running(){


//    print("input", input)
    
    
    
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

print("Insert 4 numbers and space between, then hit enter")
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


    
