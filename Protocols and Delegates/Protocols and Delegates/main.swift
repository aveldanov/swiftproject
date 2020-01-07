protocol AdvancedLifeSupport {
    func performCPR()
}


class EmergencyCallHandler {
    // does not matter who is a delegate (INTERN)
    var delegate: AdvancedLifeSupport?
    
    func assessSituation(){
        print("Call Handler: Can you tell what happend?")
    }
    
    func medicalEmergnecy(){
        delegate?.performCPR()
    }
}


struct Paramedic: AdvancedLifeSupport {
    // initial input
    init(handler: EmergencyCallHandler){
        handler.delegate = self
    }
    
    func performCPR() {
        print("Paramedic is saving life")
    }
    
}

let callHandler1 = EmergencyCallHandler()
let paramedicOnCall1 = Paramedic(handler: callHandler1)

callHandler1.assessSituation()

