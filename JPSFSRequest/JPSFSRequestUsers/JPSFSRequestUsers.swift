//
//  JPSFSUserRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/users/users
 */


class JPSFSRequestUsers: JPSFSRequest
{
    var userID: String!
    
    override var endPoint: String {
        get { return "users/\(self.userID)" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
}
