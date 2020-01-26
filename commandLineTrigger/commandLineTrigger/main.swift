//
//  ViewController.swift
//  ByteCoin
//
//  Created by Angela Yu on 11/09/2019.
//  Copyright © 2019 The App Brewery. All rights reserved.
//

import Foundation



//    var coinManager = CoinManager()

    
    let baseURL = "https://www.random.org/integers/?num=4&min=0&max=7&col=1&base=10&format=plain&rnd=new"

    
      func getCoinPrice() {
          
          let urlString = baseURL
          
          if let url = URL(string: urlString) {
              
              let session = URLSession(configuration: .default)
              let task = session.dataTask(with: url) { (data, response, error) in
                  if error != nil {
                      didFailWithError(error: error!)
                      return
                  }
                  
                  if let safeData = data {

                      let dataString = String(data: safeData, encoding: .utf8)

                      let newArr = Array(dataString!).filter({$0 != "\n"}).compactMap({$0.wholeNumberValue})
//                      print(newArr)
                      
                           didUpdatePrice(price: newArr)
                  }
              }
              task.resume()
          }
      }
    
    func didUpdatePrice(price: [Int]) {
         
         DispatchQueue.main.async {
//             self.bitcoinLabel.text = String(price)
            print("price",price)

         }
     }
    
    
     
     func didFailWithError(error: Error) {
         print(error)
     }
    
    
    
getCoinPrice()




