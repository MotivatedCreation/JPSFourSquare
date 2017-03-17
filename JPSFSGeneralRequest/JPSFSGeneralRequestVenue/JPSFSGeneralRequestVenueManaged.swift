//
//  JPSFSManagedVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueManaged: JPSFSGeneralRequestVenue
{
    /**
        Number of managed venues to return. Defaults to 100, maximum is 1000.
    */
    var limit: Int = 100
    
    /**
        Number of venues to skip over for paging. Defaults to 0.
     */
    var offset: Int = 0
    
    override var endPoint: String {
        get { return "\(super.endPoint)/managed" }
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
