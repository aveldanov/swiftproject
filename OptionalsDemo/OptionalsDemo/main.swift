

struct MyOptional {
    var property = 123
    func method(){
        
        print("I'm the struct method")
        
        
    }
}


let myOptional:MyOptional?

myOptional = MyOptional()


print(myOptional.property)












//let myOptional: String?
//
//
//myOptional = nil
//
//
//
//
//// NIL COALESCING OPERATIOR
//
//let text:String = myOptional ?? "DEFAULT"


//BINGING
//if let safeOptional = myOptional{
//    let text: String = safeOptional
//    print(text)
//}else{
//    print("myOptional is nil")
//}
