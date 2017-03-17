//
//  JPSFSAspectRequestUserVenueHistory.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/users/venuehistory
*/


class JPSFSAspectRequestUserVenueHistory: JPSFSAspectRequestUser
{
    /**
        For now, only self is supported.
    */
    var userID: String!
    
    /**
        Seconds since epoch.
     */
    var beforeTimestamp: TimeInterval?
    
    /**
        Seconds after epoch.
     */
    var afterTimestamp: TimeInterval?
    
    /**
        Limits returned venues to those in this category. If specifying a top-level category, all sub-categories will also match the query.
     */
    var categoryId: String?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.userID)/venuehistory" }
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
