//
//  ViewController.swift
//  MRT
//
//  Created by soslab on 2016/5/2.
//  Copyright © 2016年 soslab. All rights reserved.
//

import UIKit
import SwiftyJSON


class TableViewController: UITableViewController{
    
    var stationDataArray = [Station]()
    
        override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
            
        stationDataArray = StationData().getJson()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return stationDataArray.count
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return stationDataArray[section].stationName.count
    }
    override func tableView(tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return stationDataArray[section].lineName
    }
    
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if stationDataArray[indexPath.section].stationNumber[indexPath.row].count == 1 {
            let cell = tableView.dequeueReusableCellWithIdentifier("OneLineCell", forIndexPath: indexPath) as! MRTTableViewCell

            let stationName = stationDataArray[indexPath.section].stationName[indexPath.row] as String
            let stationLineNumber = stationDataArray[indexPath.section].stationNumber[indexPath.row][0] as String
            let stationLineName = stationDataArray[indexPath.section].stationDetail[indexPath.row][0] as String
            cell.stationNameLabel1.text = stationName
            cell.stationLineLabel.text = stationLineNumber
            cell.stationLineLabel.backgroundColor = StationData().getColor(stationLineName)
            cell.stationLineNameLabel.text = stationLineName
            cell.stationLineNameLabel.hidden = true
            // Configure the cell...
            return cell

        }else{
            let cell = tableView.dequeueReusableCellWithIdentifier("TwoLineCell", forIndexPath: indexPath) as! MRTTableViewCell
            let stationName = stationDataArray[indexPath.section].stationName[indexPath.row] as String
            let stationLineNumber1 = stationDataArray[indexPath.section].stationNumber[indexPath.row][0] as String
            let stationLineNumber2 = stationDataArray[indexPath.section].stationNumber[indexPath.row][1] as String
            let stationLineName1 = stationDataArray[indexPath.section].stationDetail[indexPath.row][0] as String
            let stationLineName2 = stationDataArray[indexPath.section].stationDetail[indexPath.row][1] as String
            cell.stationNameLabel.text = stationName
            cell.stationLineLabel1.text = stationLineNumber1
            cell.stationLineLabel1.backgroundColor = StationData().getColor(stationLineName1)
            cell.stationLineLabel2.text = stationLineNumber2
            cell.stationLineLabel2.backgroundColor = StationData().getColor(stationLineName2)
            cell.stationLineNameLabel1.text = stationLineName1
            cell.stationLineNameLabel2.text = stationLineName2
            cell.stationLineNameLabel1.hidden = true
            cell.stationLineNameLabel2.hidden = true
            cell.stationLineLabel2.hidden = false
            return cell

        }

    }
    
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject!) {

        if segue.identifier == "ShowOneLine" {
            let detailCell = sender as! MRTTableViewCell
            let destinationViewController = segue.destinationViewController as! OneLineViewController
            
            destinationViewController.acceptName = detailCell.stationNameLabel1.text!
            destinationViewController.acceptLineName = detailCell.stationLineNameLabel.text!
        }else if segue.identifier == "ShowTwoLine" {
            let detailCell = sender as! MRTTableViewCell
            let destinationViewController = segue.destinationViewController as! TwoLineViewController
            
            destinationViewController.acceptName = detailCell.stationNameLabel.text!
            destinationViewController.acceptLineFirstName = detailCell.stationLineNameLabel1.text!
            destinationViewController.acceptLineSecondName = detailCell.stationLineNameLabel2.text!

        }
        
    }

}

