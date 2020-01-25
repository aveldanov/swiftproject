
import Foundation

let length = 4
var guesses = 2
var pattern = [1,2,3,4]
var array = [1,2,2,4]
var close = 0
var exact = 0
var dataArr = ""
var newArr: [Int] = []
var extArr:[Int] = []



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


//var newestArr = [4]

func useData(input:[Int]){
    
    func running(){
        while exact < length && guesses > 0{
            exact = 0
            close = 0
            pattern = input
            print(pattern)
            
            
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
            
            print("")
            print("EXACT: \(exact)  CLOSE: \(close)")
            
            if exact==length{
                print("You got it right!")
                break
            }else{
                print("Continue, guesses rem: \(guesses)")
            }
            
            
            
            guesses = guesses - 1
            
            
            
        }
        
        
    }
    print("Insert 4 numbers and space between, then hit enter:")
    
    for attempt in 0...(guesses-1){
        
        running()
        
        print("The code was \(pattern)")
        break
        
    }
}








performRequest(urlString: urlString)



func delay(){
    sleep(100)
    guesses-=1
}

if guesses>0 && exact != 4 {
    delay()
}




