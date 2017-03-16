//
//  JPSFSTimeSeriesVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSTimeSeriesVenuesRequest: JPSFSVenuesRequest
{
    enum Fields: String
    {
        case totalCheckins
        case newCheckins
        case uniqueVisitors
        case sharing
        case genders
        case ages
        case hours
    }
    
    /*
        A comma-separated list of venue ids to retrieve series data for. The current user must be the manager of all venues specified.
    */
    var venueIDs: [String]?
    
    /*
        required. The start of the time range to retrieve stats for (seconds since epoch).
    */
    var startAt: TimeInterval!
    
    /*
        The end of the time range to retrieve stats for (seconds since epoch). If omitted, the current time is assumed.
    */
    var endAt: TimeInterval?
    
    /*
        Specifies which fields to return. May be one or more of totalCheckins, newCheckins, uniqueVisitors, sharing, genders, ages, hours, separated by commas.
    */
    var fields: [Fields]?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/timeseries" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var userRestrictions: [JPSFSRequest.UserRestrictions] {
        get { return [.mustBeVenueManager] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
