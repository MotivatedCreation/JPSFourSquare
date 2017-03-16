//
//  JPSFSRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation

class JPSFSRequest
{
    enum Sort
    {
        case recent
        case nearby
    }
    
    enum Mode
    {
        case foursquare
        case swarm
    }
    
    enum UserRestrictions
    {
        case none
        case mustBeVenueManager
    }
    
    var endPoint: String {
        get { return "" }
    }
    
    var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    var requiresActingUser: Bool {
        get { return false }
    }
    
    var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
