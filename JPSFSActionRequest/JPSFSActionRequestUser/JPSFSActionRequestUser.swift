//
//  JPSFSActionRequestUser.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSActionRequestUser: JPSFSActionRequest
{
    override var endPoint: String {
        get { return "users" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var UserRestriction: [UserRestriction] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
