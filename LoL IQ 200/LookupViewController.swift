//
//  LookupViewController.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/22/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import UIKit
import Alamofire

public var summonerName = String()

// Removing white space for parsing.
extension String {
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

class LookupViewController: UIViewController {
    
    // Text Field.
    @IBOutlet weak var textField: UITextField!
    
    // Labels.
    @IBOutlet weak var summonerNameLabel: UILabel!
    @IBOutlet weak var summonerLevelLabel: UILabel!
    
    // Button Action.
    @IBAction func getInfoActionButton(_ sender: Any) {
        summonerName = textField.text!.removingWhitespaces()
        getSummonerName()
        
        summonerNameLabel.text = name
        summonerLevelLabel.text = String(summonerLevel)
        labelsUnHidden()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        labelsHidden()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func labelsHidden() {
        summonerNameLabel.isHidden = true
        summonerLevelLabel.isHidden = true
    }
    
    func labelsUnHidden() {
        summonerNameLabel.isHidden = false
        summonerLevelLabel.isHidden = false
    }
}
