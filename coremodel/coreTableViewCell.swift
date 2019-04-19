//
//  coreTableViewCell.swift
//  coremodel
//
//  Created by alamin on 4/8/19.
//  Copyright © 2019 alamin. All rights reserved.
//

import UIKit

class coreTableViewCell: UITableViewCell {

    @IBOutlet weak var imageoutlet: UIImageView!
    
    @IBOutlet weak var labelone: UILabel!
    
    @IBOutlet weak var labeltwo: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
