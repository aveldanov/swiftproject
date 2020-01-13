import UIKit

extension Double {
    
    func round(to places: Int) -> Double{
        let precisionNumber = pow(10, Double(places))
        var n = self  // Current Value of the Double ->  3.14159
        n = n*precisionNumber
        n.round()
        n = n/precisionNumber
        
        return n
    }
    
    
}


var myDouble = 3.14159

//myDouble = myDouble*1000
//myDouble.round()
//myDouble = myDouble/1000
//let myRoundedDouble = String(format: "%.1f", myDouble)


myDouble.round(to: 4)

//print(myRoundedDouble)
