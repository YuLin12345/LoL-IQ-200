//
//  Connection.swift
//  LoL IQ 200
//
//  Created by Yu Lin on 1/29/17.
//  Copyright © 2017 Unknown. All rights reserved.
//

import Foundation
import Alamofire

// Varaible for API Key from Database (Online).
var apiKeyOnline = String()

// Variable for API Key from offline in a array.
var apiKeyArrayOffline = [
    "1"
]

// URL for post request.
var authURL = "https://shoesaddictor.com/ELoLSearchAuth.php"

// Parameters for post request.
let parameters: Parameters = [
    "user": "Test123",
    "pass": "ELoLSearch"
]

// Get API key from online function.
func getAPIKeyOnline() -> String {
    Alamofire.request(authURL, method: .post, parameters: parameters).responseString {
        response in
        
        if let result = response.result.value {
            
            let nameURL = "https://na.api.pvp.net/api/lol/na/v1.4/summoner/by-name/\(summonerName)?api_key=\(result)"
            
            apiKeyOnline = nameURL
        }
    }
    return apiKeyOnline
}

// Get API key from offline function.
func getAPIKeyOffline() -> String {
    let randomIndex = Int(arc4random_uniform(UInt32(apiKeyArrayOffline.count)))
    
    return apiKeyArrayOffline[randomIndex]
}
