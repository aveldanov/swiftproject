var seconds=60


func countDown(){
    
       Timer.scheduledTimer(timeInterval: 1, target: self,   selector: (#selector(ViewController.updateTimer)), userInfo: nil, repeats: true)
    
    
    
    
}


countDown()
