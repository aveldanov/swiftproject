func greetings(){
    
    print("Hello World")
}

greetings()

func greetings2(name:String){
    
    print("Hello \(name)")
        
}

greetings2(name: "John")

func greetings3(name:String)->Bool{
    
    if name=="John"{
        return true
    }else{
        return false
    }
    
}

greetings3(name: "John")
