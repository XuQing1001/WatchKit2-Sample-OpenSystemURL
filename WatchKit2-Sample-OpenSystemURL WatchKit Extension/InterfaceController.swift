//
//  InterfaceController.swift
//  WatchKit2-Sample-OpenSystemURL WatchKit Extension
//
//  Created by XuQing on 15/7/14.
//  Copyright © 2015年 XuQing1001. All rights reserved.
//

import WatchKit
import Foundation


class InterfaceController: WKInterfaceController {

    override func awakeWithContext(context: AnyObject?) {
        super.awakeWithContext(context)
        
        // Configure interface objects here.
    }

    override func willActivate() {
        // This method is called when watch view controller is about to be visible to user
        super.willActivate()
    }

    override func didDeactivate() {
        // This method is called when watch view controller is no longer visible
        super.didDeactivate()
    }

    @IBAction func makeAPhoneCall() {
        let extent = WKExtension.sharedExtension()
        extent.openSystemURL(NSURL(string: "tel:number")!)
    }
    
    @IBAction func sendSms() {
        let extent = WKExtension.sharedExtension()
        extent.openSystemURL(NSURL(string: "sms:number")!)
    }
}
