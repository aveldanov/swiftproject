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
//        print("DELEGATE IS ASSGINED \(delegate)")
        delegate?.performCPR()
    }
}




struct Paramedic: AdvancedLifeSupport {
    // initial input
    init(handler: EmergencyCallHandler){
        handler.delegate = self
//        print("HANDLER: \(handler)")
    }
    
    func performCPR() {
        print("Paramedic: is saving life")
    }
    
}

class Doctor:AdvancedLifeSupport {
    
    init(handler: EmergencyCallHandler){
        handler.delegate = self
//        print("HANDLER: \(handler)")
    }
    
    
    func performCPR() {
        print("Doctor: is saving life")
        
    }
    
    func useStepescope(){
        print("DOCTOR: using stephescope")
    }
    
    
}



class Surgeon: Doctor{
    override func performCPR() {
        super.performCPR()
        print("SURGEON: do surgery")
    }
    
    func useScalpel(){
        print("SURGEON: uses scalpel")
    }
    
    
}


let callHandler1 = EmergencyCallHandler()
//let paramedicOnCall1 = Paramedic(handler: callHandler1)

let surgeonOnCall1 = Surgeon(handler: callHandler1)


callHandler1.assessSituation()
callHandler1.medicalEmergnecy()

