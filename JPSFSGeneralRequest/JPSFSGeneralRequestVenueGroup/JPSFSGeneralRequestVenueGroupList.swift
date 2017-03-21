//
//  JPSFSListVenueGroupsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueGroupList: JPSFSGeneralRequestVenueGroup
{
    override var endPoint: String {
        get { return "\(super.endPoint)/list" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
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
