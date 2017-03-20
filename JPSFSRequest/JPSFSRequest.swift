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
    enum Mode: String
    {
        case swarm = "swarm"
        case foursquare = "foursquare"
    }
    
    enum UserRestriction
    {
        case none
        case mustBeVenueManager
    }
    
    var httpMethod: JPSRESTClient.HTTPMethod = .get
    
    var urlRequestSuffix: String
    {
        get
        {
            var urlRequestSuffix = ""
            
            let mirror = Mirror(reflecting: self)
            
            for (index, attribute) in mirror.children.enumerated()
            {
                if let propertyName = (attribute.label as String!) {
                    urlRequestSuffix.append("\(propertyName)=\(attribute.value)")
                }
            }
            
            return urlRequestSuffix
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
    
    var userRestrictions: [UserRestriction] {
        get { return [.none] }
    }
    
    var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
