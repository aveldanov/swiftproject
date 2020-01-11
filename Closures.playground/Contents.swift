import UIKit




let array = [5,6,7,8,3,5]

func addOne(n1: Int) -> Int{
    return n1 + 1
}


let result = array.map({$0+1})
print(result)

array.map(addOne)

















//func calculator (n1: Int, n2: Int, operation: (Int, Int)-> Int) -> Int{
//
//    return operation(n1, n2)
//}
//
//
//// Closure in swift is an anonimous function
//
//
//
//let result = calculator(n1: 2, n2: 3) {$0 * $1} // trailing closure
//
//print(result)
////calculator(n1: 2, n2: 3, operation: multiply)
