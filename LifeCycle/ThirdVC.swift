//
//  ThirdVC.swift
//  LifeCycle
//
//  Created by jekaterina.livcane on 31/08/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import UIKit

class ThirdVC: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        printMessage()
        
    }
    
    @IBAction func closeButtonTapped(_ sender: UIButton) {
        dismiss(animated: true, completion: nil)
    }
    
    deinit {
        printMessage()
    }
    
    
    
}
