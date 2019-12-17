struct Town {
    let name:String
    var citizens:[String]
    var resources:[String:Int]
    var flf:Bool
    
//    init(townName:String, people:[String], stat:[String:Int]) {
//        name = townName
//        citizens = people
//        resources = stat
//    }
    init(name:String, citizens:[String], resources:[String:Int]) {
        self.name = name
        self.citizens = citizens
        self.resources = resources
    }
    
    func fortify(){
        print("Defenses increased")
    }
}

var anotherTown = Town(name: "Island", citizens: ["Tom Hansk"], resources: ["Coco":1000])

anotherTown.citizens.append("Wilson")

print(anotherTown)

var ghostTown  = Town(name: "GTOWN", citizens: [], resources: ["weed":1])
