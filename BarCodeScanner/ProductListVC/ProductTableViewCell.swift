//
//  ProductTableViewCell.swift
//  BarCodeScanner
//
//  Created by Truweight Wellness Pvt Ltd on 01/01/21.
//  Copyright © 2021 Truweight Wellness Pvt Ltd. All rights reserved.
//

import UIKit

class ProductTableViewCell: UITableViewCell {
    @IBOutlet weak var productNameLabel: UILabel!
    @IBOutlet weak var productPriceLabel: UILabel!
    @IBOutlet weak var productImageView: UIImageView!

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
