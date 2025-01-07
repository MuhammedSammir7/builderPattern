//
//  ViewController.swift
//  CardWithBuilder
//
//  Created by ios on 07/01/2025.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        let cardView = CardCustomeViewBuilder()
            .setStatus(.pickUp)
            .setProductImage(UIImage(named: "camera"))
            .setNumberOfItems(3)
            .setPrice("120.50")
            .setOrderLabel("#NCF1234")
            .build()
        cardView.translatesAutoresizingMaskIntoConstraints = false
        view.addSubview(cardView)
        
        NSLayoutConstraint.activate([
            cardView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            cardView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            cardView.widthAnchor.constraint(equalToConstant: 400),
            cardView.heightAnchor.constraint(equalToConstant: 150)
        ])
    }


}

