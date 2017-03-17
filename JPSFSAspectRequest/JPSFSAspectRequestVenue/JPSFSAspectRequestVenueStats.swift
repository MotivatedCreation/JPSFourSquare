//
//  JPSFSAspectRequestVenueStats.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
    https://developer.foursquare.com/docs/venues/stats
 */


class JPSFSAspectRequestVenueStats: JPSFSAspectRequestVenue
{
    /*
        The start of the time range to retrieve stats for (seconds since epoch). If omitted, all-time stats will be returned.
     */
    var startAt: TimeInterval?
    
    /*
        The end of the time range to retrieve stats for (seconds since epoch). If omitted, the current time is assumed.
     */
    var endAt: TimeInterval?
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/stats" }
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
