//
//  ViewController.swift
//  halloween
//
//  Created by minagi on 2018/10/29.
//  Copyright © 2018 minagi. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var want: UIImageView!
    @IBOutlet weak var candy: UILabel!
    @IBOutlet weak var cookie: UILabel!
    @IBOutlet weak var cake: UILabel!
    @IBOutlet weak var heart: UIImageView!
    
    var numOfCandy:Int = 0
    var numOfCookie:Int = 0
    var numOfCake:Int = 0
    var numOfCollect = 0
    
    var image = ["candy","cookie","cake"]
    var num = 0
    
    @IBAction func tapPumpkin(_ sender: Any) {
        self.performSegue(withIdentifier: "toPumpkin", sender: nil)
        
    }
    
    
    @IBAction func tapCandy(_ sender: Any) {
        if numOfCandy != 0 {
            if image[num] == "candy" {
                numOfCandy -= 1
                candy.text = "\(numOfCandy)"
                collect()
                think()
                }
        }
    }
    
    @IBAction func tapCookie(_ sender: Any) {
        if numOfCookie != 0 {
            if image[num] == "cookie" {
                numOfCookie -= 1
                cookie.text = "\(numOfCookie)"
                collect()
                think()
            }
        }
    }
    
    @IBAction func tapCake(_ sender: Any) {
        if numOfCake != 0 {
            if image[num] == "cake" {
                numOfCake -= 1
                cake.text = "\(numOfCake)"
                collect()
                think()
            }
        }
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let tapView = segue.destination as! tapWindow
        
        tapView.numOfCandy2 = numOfCandy
        tapView.numOfCookie2 = numOfCookie
        tapView.numOfCake2 = numOfCake

    }
    
    func think() {
        num = Int(arc4random_uniform(3))
        want.image = UIImage(named: image[num])
       /*
        if numOfCollect == 10 {
            self.performSegue(withIdentifier: "toClear", sender: nil)
            numOfCollect = 0
         }
        */
    }
    
    func collect() {
        numOfCollect += 1
        heart.isHidden = false
        DispatchQueue.main.asyncAfter(deadline: .now() + 0.5) {
            self.heart.isHidden = true
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        think()
        heart.isHidden = true
        

    }



}

