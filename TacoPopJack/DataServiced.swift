//
//  DataServiced.swift
//  TacoPopJack
//
//  Created by MACBOOK on 13/04/2017.
//  Copyright © 2017 jack_amiegbe. All rights reserved.
//

import Foundation

//11th any code that confirms to this protocol will use it
protocol DataServiceDelegate: class {
    //When you call this func it will load the array, remember delegate?.deliciousTacoDataloaded() below
    func deliciousTacoDataloaded()

}

class DataService {
    
    //9th A singleton has one instance throughout the whole app, you can be refered to it from anywhere
    static let instance = DataService()
    
    //12th ? is put cos we may not always have
    weak var delegate: DataServiceDelegate?
    
    //Its pullings its data from the data from type Taco.Swift
     var tacoArray: Array<Taco> = []
    
    //10th appening to the array via Id when you load a taco
    func loadDeliciousTacoData() {
        // Chicken Tacos
        tacoArray.append(Taco(id: 1, productName: "Loaded Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 2, productName: "Loaded Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 1))
        tacoArray.append(Taco(id: 3, productName: "Plain Flour Chicken Taco", shellId: 1, proteinId: 2, condimentId: 2))
        tacoArray.append(Taco(id: 4, productName: "Plain Corn Chicken Taco", shellId: 2, proteinId: 2, condimentId: 2))
        
        // Beef Tacos
        tacoArray.append(Taco(id: 5, productName: "Loaded Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 6, productName: "Loaded Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 1))
        tacoArray.append(Taco(id: 7, productName: "Plain Flour Beef Taco", shellId: 1, proteinId: 1, condimentId: 2))
        tacoArray.append(Taco(id: 8, productName: "Plain Corn Beef Taco", shellId: 2, proteinId: 1, condimentId: 2))
        
        // Brisket Tacos
        tacoArray.append(Taco(id: 9, productName: "Loaded Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 10, productName: "Loaded Corn Brisket Taco", shellId: 2, proteinId: 3, condimentId: 1))
        tacoArray.append(Taco(id: 11, productName: "Plain Flour Brisket Taco", shellId: 1, proteinId: 3, condimentId: 2))
        tacoArray.append(Taco(id: 12, productName: "Plain Corn Brisket Taco", shellId: 2, proteinId: 3, condimentId: 2))
        
        // Fish Tacos
        tacoArray.append(Taco(id: 13, productName: "Loaded Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 1))
        tacoArray.append(Taco(id: 14, productName: "Loaded Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 1))
        tacoArray.append(Taco(id: 15, productName: "Plain Flour Fish Taco", shellId: 1, proteinId: 4, condimentId: 2))
        tacoArray.append(Taco(id: 16, productName: "Plain Corn Fish Taco", shellId: 2, proteinId: 4, condimentId: 2))
        
        //13th to be notified when data gets loaded
        delegate?.deliciousTacoDataloaded()
        
    }
    
}
