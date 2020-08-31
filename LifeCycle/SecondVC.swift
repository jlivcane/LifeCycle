//
//  SecindVC.swift
//  LifeCycle
//
//  Created by jekaterina.livcane on 31/08/2020.
//  Copyright © 2020 jekaterina.livcane. All rights reserved.
//

import UIKit

class SecondVC: UIViewController {
    
    var someProperty: String!{
        didSet{
            print(someProperty ?? "nothing here")
        }
    }
    // Fires on;y once after boots/load View
    override func viewDidLoad() {
        super.viewDidLoad()
        if someProperty != nil {
            print(someProperty ?? "nothing here")
        }
        
        // Do any additional setup after loading the view.
    }
    // before the view appears on the screen
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        printMessage()
    }
    // before the view size changes to fit the screen size
    override func viewWillLayoutSubviews() {
        printMessage()
    }
    
    //after the view size has changes to fit the screen size
    override func viewDidLayoutSubviews() {
        printMessage()
    }
    // after the view appears on the screen
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        printMessage()
    }
    
    //unloading
    deinit {
        printMessage()
    }
    
    //fires when you rotate the screen
    override func viewWillTransition(to size: CGSize, with coordinator: UIViewControllerTransitionCoordinator) {
        super.viewWillTransition(to: size, with: coordinator)
        printMessage()
    }
    //before the view closes
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        printMessage()
        
    }
    
    //after closing the view
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        printMessage()
    }
}





