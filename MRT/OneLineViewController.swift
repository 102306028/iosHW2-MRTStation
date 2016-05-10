//
//  OneLineViewController.swift
//  MRT
//
//  Created by soslab on 2016/5/9.
//  Copyright © 2016年 soslab. All rights reserved.
//

import UIKit

class OneLineViewController: UIViewController {
    
   
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var lineNameLabel: UILabel!
    
    var acceptName: String!
    var acceptLineName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = acceptName
        
        self.stationNameLabel.text = acceptName
        self.lineNameLabel.text = acceptLineName
        self.lineNameLabel.backgroundColor = StationData().getColor(acceptLineName)
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
}
