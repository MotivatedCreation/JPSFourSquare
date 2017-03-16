//
//  JPSNSAspect.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequest: JPSFSRequest
{
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
