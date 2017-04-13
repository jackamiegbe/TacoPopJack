//
//  DropShadow.swift
//  TacoPopJack
//
//  Created by MACBOOK on 13/04/2017.
//  Copyright © 2017 jack_amiegbe. All rights reserved.
//

import UIKit

protocol DropShadow {}

//1st thing he did was to apply effects on the header
extension DropShadow where Self: UIView {
    func addDropShadow() {
        layer.shadowColor = UIColor.black.cgColor
        layer.shadowOpacity = 0.7
        layer.shadowOffset = CGSize.zero
        layer.shadowRadius = 8
    }
}
