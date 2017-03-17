//
//  JPSFSAspectRequestUserMayorships.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/users/mayorships
 */


class JPSFSAspectRequestUserMayorships: JPSFSAspectRequestUser
{
    /*
        Identity of the user to get mayorships for. Pass self to get friends of the acting user.
     */
    var userID: String!
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.userID)/mayorships" }
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
