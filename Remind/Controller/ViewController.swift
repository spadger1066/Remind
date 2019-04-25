//
//  ViewController.swift
//  Remind
//
//  Created by Stephen on 24/04/2019.
//  Copyright © 2019 Stephen. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        UNService.shared.authorize()
    }

    @IBAction func onTimerTapped(_ sender: Any) {
        print("Timer")
        AlertService.actionSheet(in: self, title: "5 seconds"){
            UNService.shared.timerRequest(with: 5)
        }
        
    }
    
    @IBAction func onDateTapped(_ sender: Any) {
        print("Date")
        AlertService.actionSheet(in: self, title: "Some future time") {
            var components = DateComponents()
            components.second = 0
            UNService.shared.dateRequest(with: components)
        }
    }
    
    @IBAction func onLocationTapped(_ sender: Any) {
        print("Location")
        AlertService.actionSheet(in: self, title: "When I return") {
            
        }
    }
}

