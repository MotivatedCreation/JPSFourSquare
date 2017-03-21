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
    
    var parameters: [String: String]
    {
        get {
            let mirror = Mirror(reflecting: self)
            
            var parameters = [String: String]()
            
            for (_, attribute) in mirror.children.enumerated()
            {
                let value = "\(attribute.value)"
                
                guard let label = attribute.label, value != "nil" else { continue }
                
                parameters[label] = value
            }
            
            return parameters
        }
    }
    
    var uri: String
    {
        get
        {
            var parametersArray = [String]()
            
            for (name, value) in self.parameters {
                parametersArray.append("\(name)=\(value)")
            }
            
            let joinedParameters = (parametersArray.count > 0 ? parametersArray.joined(separator: "&") : "")
            
            return "\(self.endPoint)/\(joinedParameters)"
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
    
    var UserRestriction: [UserRestriction] {
        get { return [.none] }
    }
    
    var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
