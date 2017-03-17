//
//  JPSFSMultiRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/multi/multi
 */


class JPSFSRequestMulti: JPSFSRequest
{
    let requests: [JPSFSRequestResponse]!
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get, .post] }
    }
    
    override var endPoint: String {
        get { return "multi" }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
    
    required init(requests theRequests: [JPSFSRequestResponse])
    {
        requests = theRequests
        
        super.init()
    }
}
