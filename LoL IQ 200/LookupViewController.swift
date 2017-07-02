//
//  LookupViewController.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/22/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import UIKit
import Foundation
import Alamofire
import SwiftyJSON

var summonerName = String()

// Removing white space for parsing.
extension String {
    func removingWhitespaces() -> String {
        return components(separatedBy: .whitespaces).joined()
    }
}

class LookupViewController: UIViewController {
    
    // Text Fields.
    @IBOutlet weak var textField: UITextField!
    
    // Labels.
    @IBOutlet weak var summonerNameLabel: UILabel!
    @IBOutlet weak var summonerLevelLabel: UILabel!
    
    // Images.
    @IBOutlet weak var profileIcon: UIImageView!
    
    // Button Actions.
    @IBAction func getInfoActionButton(_ sender: Any) {
        summonerName = textField.text!.removingWhitespaces()
        getSummonerName()
        
        summonerNameLabel.text = name
        summonerLevelLabel.text = String(summonerLevel)
        
        profileIcon.image = UIImage(named: String(describing: profileIconId))
        
        labelsUnHidden()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        labelsHidden()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
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
