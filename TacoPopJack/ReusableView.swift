//
//  ReusableView.swift
//  TacoPopJack
//
//  Created by MACBOOK on 13/04/2017.
//  Copyright © 2017 jack_amiegbe. All rights reserved.
//

import UIKit


//22nd I do not really get, go to 55:36 in the video to listen again
protocol ReusableView: class {}

extension ReusableView where Self: UIView {
    
    static var reuseIdentifier: String {
        return String(describing: self)
    }
}
