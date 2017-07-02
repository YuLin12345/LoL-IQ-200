//
//  Stat.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/30/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

// Variables.
var id = Int()
var name = String()
var profileIconId = Int()
var revisionDate = Int64()
var summonerLevel = Int()

// Get SummonerName function.
func getSummonerName() {
    Alamofire.request(getAPIKeyOnline(), method: .get).responseJSON { response in
        
        if let data = response.result.value {
            let json = JSON(data)
            
            // Parse id.
            id = json[summonerName]["id"].intValue
            
            // Parse name.
            name = json[summonerName]["name"].stringValue
            
            // Parse profileIconId.
            profileIconId = json[summonerName]["profileIconId"].intValue
            
            // Parse revisionDate.
            revisionDate = json[summonerName]["revisionDate"].int64Value
            
            // Parse summonerLevel.
            summonerLevel = json[summonerName]["summonerLevel"].intValue
            
            print("ID: \(id) Name: \(name) ProfileIconID: \(profileIconId) RevisionDate: \(revisionDate) SummonerLevel: \(summonerLevel)")
        }
    }
}
