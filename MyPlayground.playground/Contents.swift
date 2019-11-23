
func loveCalculator(){
    
    let lovescore = Int.random(in: 0...100)

    switch lovescore {
    case lovescore > 80:
        print("You love yourself as Kanye loves Kanye")

    default:
        print("You are alone")

    }
    

    
    
//    if lovescore > 80{
//        print("You love yourself as Kanye loves Kanye")
//    }
//    if lovescore > 40{
//        print("Coke and Mentos")
//    }else{
//
//        print("You are alone")
//    }
    

}



loveCalculator()
