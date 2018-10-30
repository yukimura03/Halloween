//
//  tapWindow.swift
//  halloween
//
//  Created by minagi on 2018/10/29.
//  Copyright © 2018 minagi. All rights reserved.
//

import UIKit

class tapWindow : UIViewController {
    @IBOutlet weak var candy2: UILabel!
    @IBOutlet weak var cookie2: UILabel!
    @IBOutlet weak var cake2: UILabel!
    
    
    var numOfCandy2:Int = 0
    var numOfCookie2:Int = 0
    var numOfCake2:Int = 0
    
    var random = 0
    var sweets = ["candy","candy","candy","candy","candy","candy",
                  "cookie","cookie","cookie",
                  "cake"]
    
    @IBAction func pushPumpkin(_ sender: Any) {
        random = Int(arc4random_uniform(10))
        
        switch sweets[random] {
        case "candy":
            numOfCandy2 += 1
            candy2.text = "\(numOfCandy2)"
        case "cookie":
            numOfCookie2 += 1
            cookie2.text = "\(numOfCookie2)"
        case "cake":
            numOfCake2 += 1
            cake2.text = "\(numOfCake2)"
        default:
            print("error")
        }
    
    }
    
    @IBAction func pushHat(_ sender: Any) {
        
        let witchView = self.presentingViewController as! ViewController
        
        witchView.candy.text = "\(numOfCandy2)"
        witchView.cookie.text = "\(numOfCookie2)"
        witchView.cake.text = "\(numOfCake2)"
        
        witchView.numOfCandy = numOfCandy2
        witchView.numOfCookie = numOfCookie2
        witchView.numOfCake = numOfCake2

        self.dismiss(animated: true)
    }
    
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        candy2.text = "\(numOfCandy2)"
        cookie2.text = "\(numOfCookie2)"
        cake2.text = "\(numOfCake2)"
        
    }
    
}
