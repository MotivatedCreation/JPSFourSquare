//
//  JPSFSListsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/lists/lists
 */


class JPSFSListsRequest: JPSFSRequest
{
    var listID: String!
    var limit = 0
    var offset = 0
    var llBounds: CGRect?
    var categoryID: String?
    var sort: Sort?
    
    override var endPoint: String {
        get { return "lists" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
