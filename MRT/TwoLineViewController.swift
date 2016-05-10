//
//  TwoLineViewController.swift
//  MRT
//
//  Created by soslab on 2016/5/9.
//  Copyright © 2016年 soslab. All rights reserved.
//

import UIKit

class TwoLineViewController: UIViewController {
    
    @IBOutlet weak var stationNameLabel: UILabel!
    @IBOutlet weak var lineNameLabel1: UILabel!
    @IBOutlet weak var lineNameLabel2: UILabel!
    
    var acceptName: String!
    var acceptLineFirstName: String!
    var acceptLineSecondName: String!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.navigationItem.title = acceptName
        
        self.stationNameLabel.text = acceptName
        self.lineNameLabel1.text = acceptLineFirstName
        self.lineNameLabel2.text = acceptLineSecondName
        self.lineNameLabel1.backgroundColor = StationData().getColor(acceptLineFirstName)
        self.lineNameLabel2.backgroundColor = StationData().getColor(acceptLineSecondName)
        
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}
