//
//  JPSFSPagedAspectRequestUser.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/17/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSPagedAspectRequestUser: JPSFSPagedAspectRequest
{
    override var endPoint: String {
        get { return "users" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
