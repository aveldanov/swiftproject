import Foundation



let length = 4
var guesses = 2
let pattern = [1,2,3,4]
var array = [1,2,2,4]
var close = 0
var exact = 0
var newArr: [Int] = []



  

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
    var countt = 3
    let  newestArr = input
    
        print("inside useData",newestArr)
    
    
    func runn2(){

       print("runn2")
        
        print("Please enter your name:")

        if let name = readLine() {
            print("Hello, \(name)!")
        } else {
            print("Why are you being so coy?")
        }

        print("TTFN!")
    }
    runn2()

    
    
}

performRequest(urlString: urlString)

