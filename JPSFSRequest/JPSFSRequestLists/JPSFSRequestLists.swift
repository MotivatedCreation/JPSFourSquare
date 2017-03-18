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


class JPSFSRequestLists: JPSFSRequest
{
    enum Sort
    {
        case recent
        case nearby
    }
    
    var listID: String!
    var limit = 0
    var offset = 0
    var llBounds: CGRect?
    var categoryID: String?
    var sort: Sort?
    
    override var endPoint: String {
        get { return "lists/\(self.listID)" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
