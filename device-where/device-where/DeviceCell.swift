//
//  DeviceCell.swift
//  device-where
//
//  Created by Stefanie Seah on 30/7/17.
//  Copyright © 2017 Stefanie Seah. All rights reserved.
//

import UIKit

class DeviceCell: UITableViewCell {

    @IBOutlet weak var statusImage: UIButton!
    @IBOutlet weak var deviceModelLabel: UILabel!
    @IBOutlet weak var systemVersionLabel: UILabel!
    @IBOutlet weak var currentUserLabel: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
