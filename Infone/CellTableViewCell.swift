//
//  CellTableViewCell.swift
//  Infone
//
//  Created by Nathan Endow on 8/16/20.
//  Copyright © 2020 Nathan Endow. All rights reserved.
//

import UIKit

class CellTableViewCell: UITableViewCell {

    @IBOutlet var item: UILabel!
    @IBOutlet var result: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
