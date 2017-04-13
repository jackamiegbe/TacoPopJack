//
//  MainVC.swift
//  TacoPopJack
//
//  Created by MACBOOK on 13/04/2017.
//  Copyright © 2017 jack_amiegbe. All rights reserved.
//

import UIKit

class MainVC: UIViewController {
    
    //3rd outlet and then at main story board change the class of sub header
    @IBOutlet weak var headerView: ViewHeader!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //4th connect IBOutlet and add DropShadow
        headerView.addDropShadow()
        
        
    }
    
    
}
