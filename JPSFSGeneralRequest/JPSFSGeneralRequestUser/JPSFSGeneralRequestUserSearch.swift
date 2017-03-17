//
//  JPSFSSearchUsersRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestUserSearch: JPSFSGeneralRequestUser
{
    /**
        A comma-delimited list of phone numbers to look for.
    */
    var phone: [String]?
    
    /**
        A comma-delimited list of email addresses to look for.
    */
    var email: [String]?
    
    /**
        A comma-delimited list of Twitter handles to look for.
    */
    var twitter: [String]?
    
    /**
        A single Twitter handle. Results will be users that this handle follows on Twitter who use Foursquare.
    */
    var twitterSource: String?
    
    /**
        A comma-delimited list of Facebook ID's to look for.
    */
    var fbid: [String]?
    
    /**
        A single string to search for in users' names.
    */
    var name: String?
    
    /**
        (default false) Indicates whether to only return pages. This replaces the functionality of the old dedicated pages/search endpoint.
    */
    var onlyPages = false
    
    override var endPoint: String {
        get { return "\(super.endPoint)/search" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get, .post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
