//
//  JPSFSAspectRequestUserTastes.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/users/tastes
 */


class JPSFSAspectRequestUserTastes: JPSFSAspectRequestUser
{
    /*
        Identity of the user to get tastes for. Currently, only the user ID of the acting user is supported.
     */
    var userID: String!
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.userID)/tastes" }
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
        get { return [.foursquare] }
    }
}
