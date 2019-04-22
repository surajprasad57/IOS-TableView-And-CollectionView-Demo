//
//  TableViewCell.swift
//  ListAndGrid
//
//  Created by Suraj Prasad on 25/02/19.
//  Copyright © 2019 Suraj Prasad. All rights reserved.
//

import UIKit

class TableViewCell: UITableViewCell {

    @IBOutlet weak var listFoodImage: UIImageView!
    @IBOutlet weak var listFoodName: UILabel!
    @IBOutlet weak var listFoodDescription: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
}
