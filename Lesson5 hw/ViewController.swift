//
//  ViewController.swift
//  Lesson5 hw
//
//  Created by Егор Вишняков on 6.08.21.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var textInfoLabel: UILabel!
    @IBOutlet weak var addBeerToWarehouseButton: UIButton!
    @IBOutlet weak var pourBeerToCustomerButton: UIButton!
    @IBOutlet weak var closeBarButton: UIButton!
    @IBOutlet weak var printStatButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func addBeerToWarehouseDidTap() {
        BeerBar.shared.addBeerToWarehouse(value: Beer.zhigulevskoe())
        textInfoLabel.text = Beer.beerInfo(Beer.zhigulevskoe())()
    }
    
    @IBAction func pourBeerToCustomerDidTap() {
        if BeerBar.shared.pourBeerToCustomer() == true {
            textInfoLabel.text = Beer.beerInfo(Beer.zhigulevskoe())()
        } else {
            textInfoLabel.text = "Нет в наличии"
        }
    }
    
    @IBAction func closeBarDidTap() {
        textInfoLabel.text = "Бар закрыт"
    }
    
    @IBAction func printStatDidTap() {
        textInfoLabel.text = BeerBar.fullStats(BeerBar.shared)()
    }
}
