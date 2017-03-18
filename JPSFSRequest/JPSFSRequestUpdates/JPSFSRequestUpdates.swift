//
//  JPSFSUpdatesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/updates/updates
 */


class JPSFSRequestUpdates: JPSFSRequest
{
    var updateID: String!
    
    override var endPoint: String {
        get { return "updates/\(self.updateID)" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
}
