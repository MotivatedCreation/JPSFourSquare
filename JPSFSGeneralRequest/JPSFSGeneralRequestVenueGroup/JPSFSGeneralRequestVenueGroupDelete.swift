//
//  JPSFSDeleteVenueGroupsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueGroupDelete: JPSFSGeneralRequestVenueGroup
{
    /**
        required The ID of the venue group to delete.
    */
    var venueGroupID: String!
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.venueGroupID)/delete" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var UserRestriction: [JPSFSRequest.UserRestriction] {
        get { return [.mustBeVenueManager] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
