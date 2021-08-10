//
//  File.swift
//  Lesson5 hw
//
//  Created by Егор Вишняков on 9.08.21.
//

import Foundation

class BeerBar {
    
    var beerInStock: ([Beer]) = []
    static let shared: BeerBar = BeerBar()
    private init() {
        self.beerInStock = []
    }

    func addBeerToWarehouse(value: Beer) {
        beerInStock.append(value)
    }
    
    func pourBeerToCustomer() -> Bool {
        if beerInStock.count > 0 {
            beerInStock.removeLast()
            return true
        } else {
            return false
        }
    }
    
    func closeBar() {
        beerInStock.removeAll()
    }
    
    func fullStats() -> String {
        var beerStatistic: String = ""
        for value in beerInStock {
            beerStatistic += "\(value.beerInfo())"
        }
        return beerStatistic
    }
}











