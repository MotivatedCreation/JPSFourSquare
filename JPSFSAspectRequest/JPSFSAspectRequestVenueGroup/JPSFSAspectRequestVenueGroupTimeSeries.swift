//
//  JPSFSAspectRequestVenueGroupTimeSeries.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestVenueGroupTimeSeries: JPSFSAspectRequestVenueGroup
{
    enum Field: String
    {
        case totalCheckins = "totalCheckins"
        case newCheckins = "newCheckins"
        case uniqueVisitors = "uniqueVisitors"
        case sharing = "sharing"
        case genders = "genders"
        case ages = "ages"
        case hours = "hours"
    }
    
    /**
        required. The start of the time range to retrieve stats for (seconds since epoch).
    */
    var startAt: TimeInterval?
    
    /**
        The end of the time range to retrieve stats for (seconds since epoch). If omitted, the current time is assumed.
    */
    var endAt: TimeInterval?
    
    /**
        Specifies which fields to return. May be one or more of totalCheckins, newCheckins, uniqueVisitors, sharing, genders, ages, hours, separated by commas.
    */
    var fields: [Field]?
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/timeseries" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.mustBeVenueManager] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
