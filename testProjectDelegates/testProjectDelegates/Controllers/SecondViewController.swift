//
//  SecondViewController.swift
//  testProjectDelegates
//
//  Created by Veldanov, Anton on 1/17/20.
//  Copyright © 2020 Anton Veldanov. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    var valueSecond = "Placeholder"
    
    @IBOutlet weak var outputLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        outputLabel?.text = valueSecond

        

    
        // Do any additional setup after loading the view.
    }
    
    @IBAction func goBackButtonPressed(_ sender: UIButton) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
