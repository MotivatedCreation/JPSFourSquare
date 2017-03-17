//
//  JPSFSGeneralRequestCheckin.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestCheckin: JPSFSGeneralRequest
{
    override var endPoint: String {
        get { return "checkins" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get, .post] }
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
