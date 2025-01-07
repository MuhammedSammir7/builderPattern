//
//  CardCustomeView.swift
//  CardWithBuilder
//
//  Created by ios on 07/01/2025.
//

import UIKit

class CardCustomeView: UIView {

    @IBOutlet var contentView: UIView!
    @IBOutlet weak var statusLbl: UILabel!{
        didSet{
            statusLbl.layer.cornerRadius = 10
            statusLbl.layer.masksToBounds = true
            statusLbl.translatesAutoresizingMaskIntoConstraints = false
        }
    }
    @IBOutlet weak var productImg: UIImageView!{
        didSet{
            productImg.layer.cornerRadius = productImg.frame.size.width / 2
            productImg.layer.masksToBounds = true
            productImg.clipsToBounds = true
            productImg.contentMode = .scaleAspectFill
        }
    }
    @IBOutlet weak var numberOfItemsLbl: UILabel!
    @IBOutlet weak var priceLbl: UILabel!
    @IBOutlet weak var orderLbl: UILabel!
    
    override init(frame: CGRect) {
            super.init(frame: frame)
            loadNib()
        }
        
        required init?(coder: NSCoder) {
            super.init(coder: coder)
            loadNib()
        }
    private func loadNib(){
        Bundle.main.loadNibNamed("CardCustomeView", owner: self)
        addSubview(contentView)
        contentView.frame = self.bounds
        contentView.autoresizingMask = [.flexibleHeight, .flexibleWidth]
    }
    
}
