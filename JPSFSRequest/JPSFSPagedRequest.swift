//
//  JPSFSPagedRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSPagedRequest: JPSFSRequest
{
    /**
     Number of results to return.
     */
    var limit: Int
    {
        get { return self.limit }
        set { if newValue > self.maxLimit { self.limit = self.maxLimit } }
    }
    
    /**
     Used to page through results.
     */
    var offset: Int
    {
        get { return self.offset }
        set { if newValue > self.maxOffset { self.offset = self.maxOffset } }
    }
    
    var maxLimit: Int {
        get { return Int.max }
    }
    
    var maxOffset: Int {
        get { return Int.max }
    }
    
    override var endPoint: String {
        get { return "" }
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
