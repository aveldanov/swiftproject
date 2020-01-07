

protocol CanFly {
    func fly()
}



class Bird{
    
    var isFemale = true
    
    func layEgg(){
        if isFemale{
            print("LAYED AN EGG")
        }
    }
    
//    func fly(){
//        print("BIRD FLYING")
//    }
    
    
}


class Eagle: Bird, CanFly {
    func fly() {
        print("EAGLE FLIES")
    }
    
    
    func soar(){
        print("EAGLE SOARS")
    }
}





class Penguin: Bird {
    func swim(){
        print("PENGUIN SWIM")
    }
}


struct FlyingMuseum {
    func flyingDemos(flyingObject: CanFly){
        flyingObject.fly()
    }
}


struct Airplane: CanFly {
    
     func fly() {
        print("PLANE IS FLYING")
    }
    
}

let myEagle = Eagle()
let myPenguin = Penguin()
let museum = FlyingMuseum()
let myPlane = Airplane()

museum.flyingDemos(flyingObject: myEagle)
museum.flyingDemos(flyingObject: myPlane)
