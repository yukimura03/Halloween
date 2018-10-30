//
//  clearView.swift
//  halloween
//
//  Created by minagi on 2018/10/31.
//  Copyright © 2018 minagi. All rights reserved.
//

import UIKit

class clearView : UIViewController {
    
    
    @IBAction func tapHat(_ sender: Any) {
        
        let witchView = self.presentingViewController as! ViewController
        witchView.numOfCollect = 0
        
        self.dismiss(animated: true)
        
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
}
