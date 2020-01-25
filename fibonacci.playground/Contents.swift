


//func fib(n:Int)->[Int]{
//
//    var seq = [1,1]
//
//    if n == 1 {
//        return [1]
//    }
//    else if n == 2 {
//        return [1,1]
//    }else{
//        for item in 3...n{
//            print(item)
////            seq[item-2] // seq[1] + seq[2]
//          seq.append(seq[item-3] + seq[item-2])
//
//        }
//
//
//    }
//
//
//
//    return seq
//
//}


func fib(n:Int)->Int{

    
    if n == 1 {
        return 1
    }
    else if n == 2 {
       return 1
    }else{

        
    return fib(n: n-2)+fib(n: n-1)
    }
    
}


print(fib(n: 10))
