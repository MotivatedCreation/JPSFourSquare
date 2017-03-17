//
//  JPSFSAddVenueGroupsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueGroupAdd: JPSFSGeneralRequestVenueGroup
{
    /*
        Required. The name to give the group.
    */
    var name: String!
    
    /*
        Comma-delimited list of venue IDs to add to the group. If this parameter is not specified, then the venue group will initially be empty.
     */
    var venueIDs: [String]?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
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
