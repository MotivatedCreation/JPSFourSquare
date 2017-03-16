//
//  JPSFSPageUpdatesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/pageupdates/pageupdates
 */


class JPSFSPageUpdatesRequest: JPSFSRequest
{
    let pageUpdateID: String!
    var limit = 0
    var ll: CLLocationCoordinate2D
    
    override var endPoint: String {
        get { return "pageupdates" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
