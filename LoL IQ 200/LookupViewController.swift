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

//Variables.
var summonerName = String()

//Removing white space for parsing.
extension String {
    func removingWhitespaces() -> String {
        return
            components(separatedBy: .whitespaces).joined()
    }
}

class LookupViewController: UIViewController {
    
    //Image.
    @IBOutlet weak var profileIcon: UIImageView!
    
    //Labels.
    @IBOutlet weak var summonerNameLabel: UILabel!
    @IBOutlet weak var summonerLevelLabel: UILabel!
    
    //Text fields.
    @IBOutlet weak var textField: UITextField!
    
    //Buttons.
    @IBAction func getInfoActionButton(_ sender: Any) {
        //Double tap.
        let doubleTap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: Selector(("handleDoubleTap")))
        doubleTap.numberOfTapsRequired = 2
        self.view.addGestureRecognizer(doubleTap)
        
        summonerName = textField.text!.removingWhitespaces()
        
        getResult()
        
        //If ID is not equal 0.
        if(id != 0) {
            profileIcon.image = UIImage(named: "\(profileIconId)")
            summonerLevelLabel.text! = String(summonerLevel)
            summonerNameLabel.text! = name

            unhideLabels()
        }
        //If statusCode equals 404 - Summoner not found or exist.
        else if(statusCode == 404) {
            hideLabels()
            summonerNameLabel.text! = "No summoner name found."
            summonerNameLabel.isHidden = false
        }
            //If statusCode equals 400, 401, 403, 500, 502, 503, 504 there is Riot API error.
        else if(statusCode == 400 || statusCode == 401 || statusCode == 403 || statusCode == 500 || statusCode == 502 || statusCode == 503 || statusCode == 504) {
            hideLabels()
            summonerNameLabel.text! = "API error."
            summonerNameLabel.isHidden = false
        }
            //Else try again.
        else {
            hideLabels()
            summonerNameLabel.text! = "Try again."
            summonerNameLabel.isHidden = false
        }
    }
    
    override func viewDidLoad() {
        hideLabels()
        super.viewDidLoad()
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    func hideLabels() {
        profileIcon.isHidden = true
        summonerNameLabel.isHidden = true
        summonerLevelLabel.isHidden = true
    }
    
    func unhideLabels() {
        profileIcon.isHidden = false
        summonerNameLabel.isHidden = false
        summonerLevelLabel.isHidden = false
    }
}
