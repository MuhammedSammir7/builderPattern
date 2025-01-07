//
//  Builder.swift
//  CardWithBuilder
//
//  Created by ios on 07/01/2025.
//

import UIKit

class CardCustomeViewBuilder {
    private var cardView: CardCustomeView
    
    init() {
        self.cardView = CardCustomeView()
    }

    
    func setStatus(_ status: OrderStatus) -> CardCustomeViewBuilder {
        switch status{
        case .pickUp:
            cardView.statusLbl.isHidden = false
            cardView.statusLbl.text = "Pick Up"
            cardView.statusLbl.textColor = UIColor(red: 193/255, green: 47/255, blue: 91/255, alpha: 1)
            cardView.statusLbl.backgroundColor = UIColor(red: 251/255, green: 243/255, blue: 247/255, alpha: 1)

        case .processing:
            cardView.statusLbl.isHidden = false
            cardView.statusLbl.text = "Processing"
            cardView.statusLbl.textColor = UIColor(red: 47/255, green: 56/255, blue: 125/255, alpha: 1)
            cardView.statusLbl.backgroundColor = UIColor(red: 244/255, green: 244/255, blue: 248/255, alpha: 1)

        case .delivered:
            cardView.statusLbl.isHidden = false
            cardView.statusLbl.text = "Delivered"
            cardView.statusLbl.textColor = UIColor(red: 111/255, green: 186/255, blue: 141/255, alpha: 1)
            cardView.statusLbl.backgroundColor = UIColor(red: 247/255, green: 251/255, blue: 249/255, alpha: 1)

        case .noStatue:
            cardView.statusLbl.isHidden = true
        }
        return self
    }
    
    func setProductImage(_ image: UIImage?) -> CardCustomeViewBuilder {
        if let image = image {
            cardView.productImg.isHidden = false
            cardView.productImg.image = image
        }else{
            cardView.productImg.isHidden = true
        }
        return self
    }
    
    func setNumberOfItems(_ number: Int) -> CardCustomeViewBuilder {
        cardView.numberOfItemsLbl.text = "\(number) items"
        return self
    }
    
    func setPrice(_ price: String) -> CardCustomeViewBuilder {
        cardView.priceLbl.text = price
        return self
    }
    
    func setOrderLabel(_ order: String?) -> CardCustomeViewBuilder {
        if let order = order{
            cardView.orderLbl.isHidden = false
            cardView.orderLbl.text = "Order \(order)"
        }else{
            cardView.orderLbl.isHidden = true
        }
        return self
    }
    
    func build() -> CardCustomeView {
        return cardView
    }
}
enum OrderStatus: String {
    case pickUp
    case processing
    case delivered
    case noStatue
}
