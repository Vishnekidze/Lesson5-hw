//
//  File.swift
//  Lesson5 hw
//
//  Created by Егор Вишняков on 9.08.21.
//

import Foundation

class Beer {
    var beerName: String
    var countryOfOrigin: String
    var price: Double
    var bottleVolume: Double
    
    init(beerName: String, countryOfOrigin: String, price: Double, bottleVolume: Double) {
        self.beerName = beerName
        self.countryOfOrigin = countryOfOrigin
        self.price = price
        self.bottleVolume = bottleVolume
    }
    
    func printBeerInfo() -> String {
        return ("Название пива \(beerName) \nСтрана происхождения \(countryOfOrigin), \nЦена \(price), \nОбъём бутылки \(bottleVolume)")
        
    }
    
    
    
    static func Heinieken() -> Beer{
        let beerHeinieken = Beer(beerName: "Heinieken",
                                 countryOfOrigin: "Германия",
                                 price: 2.5,
                                 bottleVolume: 0.5)
        return beerHeinieken
        
    }
    
    static func Zhigulevskoe() -> Beer {
        let beerZhigulevskoe = Beer(beerName: "Жигулёвское", countryOfOrigin: "Россия", price: 1.0, bottleVolume: 1.5)
        return beerZhigulevskoe
    }
    
}
