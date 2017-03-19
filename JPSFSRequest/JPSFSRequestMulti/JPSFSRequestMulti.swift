//
//  JPSFSMultiRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/multi/multi
 */


class JPSFSRequestMulti: JPSFSRequest
{
    /**
     required A comma-delimited list of API requests. The parameter is constructed by encodeURIComponent("/venues/search?ll=" + encodeURIComponent("40,30") + ",/specials/search?ll=" + (encodeURIComponent("40,30"))), for example.
     */
    var requests: [JPSFSGeneralRequest]!
    
    override var endPoint: String {
        get { return "multi" }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
