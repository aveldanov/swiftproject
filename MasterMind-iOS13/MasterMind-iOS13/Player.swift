//
//  Player.swift
//  MasterMind-iOS13
//
//  Created by Veldanov, Anton on 2/7/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import Foundation



class Player: NSObject {
    var score: Int
    var name: String
    
    init(score:Int, name:String) {
        self.score = score
        self.name = name
    }

}
