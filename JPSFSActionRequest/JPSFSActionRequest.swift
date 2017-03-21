//
//  JPSFSActionRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSActionRequest: JPSFSRequest
{
    /*
     required The object you want.
     */
    var id: String!
    
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
