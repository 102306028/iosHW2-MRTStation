//
//  MRTTableViewCell.swift
//  MRT
//
//  Created by soslab on 2016/5/8.
//  Copyright © 2016年 soslab. All rights reserved.
//

import Foundation
import UIKit
class MRTTableViewCell: UITableViewCell {
    @IBOutlet weak var stationNameLabel1: UILabel!
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var stationLineLabel1: UILabel!
    @IBOutlet weak var stationLineLabel2: UILabel!
    @IBOutlet weak var stationLineLabel: UILabel!
    @IBOutlet weak var stationLineNameLabel: UILabel!
    
    @IBOutlet weak var stationLineNameLabel1: UILabel!
    @IBOutlet weak var stationLineNameLabel2: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    override func setSelected(selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
        
        // Configure the view for the selected state
    }
}