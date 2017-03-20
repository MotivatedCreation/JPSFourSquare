//
//  JPSFSRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


@objc(JPSFSRequest)
class JPSFSRequest: NSObject
{
    enum Mode
    {
        case foursquare
        case swarm
    }
    
    enum UserRestrictions
    {
        case none
        case mustBeVenueManager
    }
    
    var httpMethod: JPSRESTClient.HTTPMethod = .get
    
    var urlRequest: URLRequest
    {
        get {
            return URLRequest(url: URL(string: "")!)
        }
    }
    
    var endPoint: String {
        get { return "" }
    }
    
    var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get, .post] }
    }
    
    var requiresActingUser: Bool {
        get { return false }
    }
    
    var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
