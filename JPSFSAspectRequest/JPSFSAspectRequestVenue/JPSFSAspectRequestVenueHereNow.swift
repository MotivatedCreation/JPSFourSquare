//
//  JPSFSAspectRequestVenueHereNow.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
    https://developer.foursquare.com/docs/venues/herenow
 */


class JPSFSAspectRequestVenueHereNow: JPSFSPagedAspectRequestVenue
{
    override var maxLimit: Int? {
        get { return 500 }
    }
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/herenow" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
