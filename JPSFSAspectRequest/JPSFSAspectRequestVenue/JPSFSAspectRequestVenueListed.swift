//
//  JPSFSAspectRequestVenueListed.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/venues/listed
 */


class JPSFSAspectRequestVenueListed: JPSFSAspectRequestVenue
{
    enum Group: String
    {
        case created = "created"
        case edited = "edited"
        case followed = "followed"
        case friends = "friends"
        case other = "other"
    }
    
    /**
        can be created, edited, followed, friends, other. If no acting user is present, only other is supported.
     */
    var group: Group?
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/listed" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var UserRestriction: [UserRestriction] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
