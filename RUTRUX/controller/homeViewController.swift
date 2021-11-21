//
//  verificacionViewController.swift
//  RUTRUX
//
//  Created by reynaldo peralta marquez on 11/18/21.
//  Copyright © 2021 reynaldo peralta marquez. All rights reserved.
//

import UIKit

class homeViewController: UIViewController {

    
    @IBOutlet weak var leading: NSLayoutConstraint!
    @IBOutlet weak var trailing: NSLayoutConstraint!
    
    var menuOut = false
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    

    @IBAction func menuTapped(_ sender: Any) {
        
        if menuOut == false{
            leading.constant = 200
            trailing.constant = -200
            menuOut = true
        }else{
            leading.constant = 0
            trailing.constant = 0
            menuOut = false
        }
        
        UIView.animate(withDuration: 0.2,delay: 0.0,options: .curveEaseIn, animations: {
            self.view.layoutIfNeeded()
        }) {(animationComplete) in
           print("Animacion completada")
        }
        
        
    }
    

}
