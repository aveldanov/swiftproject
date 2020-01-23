import UIKit



let button = UIButton(frame: CGRect(x: 0, y: 0, width: 50, height: 50));


extension UIButton{
    func makeCircular(){
        self.clipsToBounds = true
        self.layer.cornerRadius = self.frame.size.width/2
    }
}


button.makeCircular()

button.backgroundColor = .green


//button.backgroundColor = .red
//
//button.layer.cornerRadius = 25
//
//button.clipsToBounds = true







//extension Double {
//
//    func round(to places: Int) -> Double{
//        let precisionNumber = pow(10, Double(places))   // converted "places" Int to Double
//        var n = self  // Current Value of the Double ->  3.14159
//        n = n*precisionNumber
//        n.round()
//        n = n / precisionNumber
//        return n
//    }
//
//
//}
//
//
//var myDouble = 3.141591
//
////myDouble = myDouble*1000
////myDouble.round()
////myDouble = myDouble/1000
////let myRoundedDouble = String(format: "%.1f", myDouble)
//
//
//myDouble.round(to: 4)
//
////print(myRoundedDouble)
