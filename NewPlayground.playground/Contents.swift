
struct Town {
    let name:String
    var citizens:[String]
    var resources:[String: Int]
    
//    init(name:String, citizens:[String], resources:[String: Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
    
    func fortify(){
        print("Defenses increase")
    }
    
    mutating func harvestRice(){
        resources["Rice"] = 100
    }
}

var anotherTown = Town(name: "Moscow", citizens: ["Name 1","Name 2"], resources: ["Water" : 234])
anotherTown.citizens.append("Name 3")

var anotherTown2 = Town(name: "Reutov", citizens: ["Name 122","Name 222"], resources: ["Rice" : 111])

print(anotherTown)
print(anotherTown2)



//struct Town {
//    let name:String
//    var citizens:[String]
//    var resources:[String: Int]
//
//    init(name:String, citizens:[String], resources:[String: Int]) {
//        self.name = name
//        self.citizens = citizens
//        self.resources = resources
//    }
//
//
//    func fortify(){
//        print("Defenses increase")
//    }
//}
//
//
//var anotherTown = Town(name: "Moscow", citizens: ["Name 1","Name 2"], resources: ["Water" : 234])
//anotherTown.citizens.append("Name 3")
//print(anotherTown)




//struct Town {
//    let name:String
//    var citizens:[String]
//    var resources:[String: Int]
//
//    init(townName:String, people:[String], stats:[String: Int]) {
//        name = townName
//        citizens = people
//        resources = stats
//    }
//
//
//    func fortify(){
//        print("Defenses increase")
//    }
//}
//
//
//var anotherTown = Town(townName: "Moscow", people: ["Name 1","Name 2"], stats: ["Water" : 234])
//anotherTown.citizens.append("Name 3")
//print(anotherTown)










//
//
//struct Town {
//    let name = "Reutov"
//    var citizens = ["Anton", "John"]
//    var resources = ["Grain":100, "Ore":42, "Wool":300]
//    func fortify(){
//        print("Defenses increase")
//    }
//}
//
//
//
//var myTown = Town()
//
//print(myTown.citizens)
//print("Hello \(myTown.name) has \(myTown.resources["Grain"]!) of grain")
//
//myTown.citizens.append("Keanu Reeves")
//
//myTown.fortify()
//
//



















//
//func loveCalculator(){
//
//    let loveScore = Int.random(in: 1...100)
//
//    if loveScore >= 80{
//        print(">=80")
//    }else if loveScore >= 40{
//
//        print(">=40")
//    }else{
//
//        print("<40")
//    }
//
//
//
//}
//
//loveCalculator()


























//
//func greeting(){
//
//    print("HELLO")
//
//
//}
//
//func greeting2(whoToGreet:String){
//
//
//    print("Hello \(whoToGreet)")
//}
//
//
//greeting2(whoToGreet: "John")
//
