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

//Variables.
var id = Int()                  //summonerID
var name = String()             //summonerName
var profileIconId = Int()       //profileIconID
var revisionDate = Int()        //revisionDate - LastPlayed
var summonerLevel = Int()       //summonerLevel
var statusCode = Int()          //status_code from API

//Test API Key. Get it from developer.riotgames.com
var apiKey = "RGAPI-a80cc6d2-caf1-4067-99d5-27d6a6a35a8b"

//Get parsed data results.
func getResult() {
    Alamofire.request("https://na1.api.riotgames.com/lol/summoner/v3/summoners/by-name/\(summonerName)?api_key=\(apiKey)", method: .get).responseJSON { response in
        
        if let data = response.result.value {
            let json = JSON(data)
            
            //Parsed summoner id.
            id = json["id"].intValue
            
            //Parsed summoner name.
            name = json["name"].stringValue
            
            //Parsed summoner profileIconId.
            profileIconId = json["profileIconId"].intValue
            
            //Parsed summoner revisionDate.
            revisionDate = json["revisionDate"].intValue
            
            //Parsed summoner summonerLevel.
            summonerLevel = json["summonerLevel"].intValue
            
            //Parsed summoner statusCode
            statusCode = json["status"]["status_code"].intValue
            
            //Console output for debug.
            //print("ID: \(id) Name: \(name) ProfileIconID: \(profileIconId) RevisionDate: \(revisionDate) SummonerLevel: \(summonerLevel) StatusCode: \(statusCode)")
        }
    }
}
