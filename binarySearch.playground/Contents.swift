//import UIKit

var array = [1,2,4,6,8,9,11,13,16,17,20]


// Binary Search - for sorted only

func binarySearch(searchValue:Int, array:[Int])->Bool{
    
    var leftIndex = 0
    var rightIndex = array.count-1
    
    while (leftIndex<=rightIndex){

        var midIndex = (rightIndex+leftIndex)/2 // (11-0)/2 = 5   10-6/2 = 2
       
        var midValue = array[midIndex]
        print("midIndex = \(midIndex), midValue = \(midValue), leftIndex = \(leftIndex), rightIndex = \(rightIndex), [\(array[leftIndex]), \(array[rightIndex])]")

        if midValue == searchValue{
            print("FOUND: \(midValue)")
            return true
            
        }
        if searchValue  < midValue{
            rightIndex = midIndex - 1
        }
        
        if searchValue > midValue{
            
            leftIndex = midIndex + 1
            
        }
        
    }
    
    
    
    return false
}

print(binarySearch(searchValue: 17, array: array))


//
//func linearSearch(num:Int, arr:[Int]) -> Bool{
//    for i in arr{
//        if i == num{
//            print(i)
//            return true
//        }
//
//    }
//    return false
//
//}
//
//
//print(linearSearch(num: 11, arr: array))
