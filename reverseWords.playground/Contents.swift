import UIKit
var str = "go over a very common question asked in a software interview"

func reveseWord(sentense:String)->String{
    var allWords = str.components(separatedBy: " ")
    var newSent = ""
//    print(allWords[3])
    
    for item in 0...allWords.count-1{
        if newSent != ""{
                       newSent += " "
                   }
        if(item+1)%2==0{
//            print(String(allWords[item].reversed()))
           
            
            newSent += String(allWords[item].reversed())
        }else{
            newSent += allWords[item]

        }
    }
  
    return newSent
    
}


print(reveseWord(sentense: str))
