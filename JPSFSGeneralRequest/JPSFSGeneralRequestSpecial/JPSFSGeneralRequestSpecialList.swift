//
//  JPSFSListSpecialsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestSpecialList: JPSFSGeneralRequestSpecial
{
    enum Status: String
    {
        case pending = "pending"
        case active = "active"
        case expired = "expired"
        case all = "all"
    }
    
    /**
        comma-separated list of venue IDs; filters results to the specials assigned to the venue(s).
    */
    var venueID: [String]?
    
    /**
        (optional, requires venueId) which specials to return: pending, active, expired, all
    */
    var status: Status?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/list" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var UserRestriction: [UserRestriction] {
        get { return [.mustBeVenueManager] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
