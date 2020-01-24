


var num = 5


//func factorial(number: UInt)->UInt{
//    var result:UInt = 1
//    for i in 1...number{
//        print(i)
//        result = result*i
//    }
//    return result
//}

func factorial(number: UInt)->UInt{
    if number == 0{
        return 1
    }
    
    
    return number*factorial(number: number-1)
    
    //2*1
    //3*2*1
    //4*3*2*1
}


// 5*5-1




print(factorial(number: 5))
