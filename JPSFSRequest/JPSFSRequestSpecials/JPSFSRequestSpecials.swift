//
//  JPSFSSpecialsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/specials/specials
 */


class JPSFSRequestSpecials: JPSFSRequest
{
    var specialID: String!
    var venueID: String!
    var userID: String?
    
    override var endPoint: String {
        get { return "specials/\(self.specialID)" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
