


func mostCommonNameInArray(array:[String])->String{
    var nameDict = [String:Int]()
   var mostCommonName = ""
    
    for name in array{
        
        if !((nameDict[name] != nil)){
               nameDict[name] = 1
            
        }else{
            
            nameDict[name]! += 1
        }
        
        
     
        
        
//
//        print(name)
        print(nameDict)
    }
    
    for name in nameDict.keys{
//        print(name)
        if mostCommonName == ""{
            mostCommonName = name
        }else{
    
            if nameDict[mostCommonName]! < nameDict[name]!{
                mostCommonName = name
            }
            
        }
        
    }
    
    
    return mostCommonName
}




print(mostCommonNameInArray(array: ["Anton","John","Kate","Bianca","Anton","Anton","Bianca","Bianca","Bianca"]))
