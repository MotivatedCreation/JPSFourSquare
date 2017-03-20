//
//  JPSFSResourceController.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


@objc(JPSFSResourceController)
class JPSFSResourceController: NSObject
{
    internal let api: JPSFSAPI!
    
    required init(clientID: String, clientSecret: String)
    {
        api = JPSFSAPI(clientID: clientID, clientSecret: clientSecret)
        
        super.init()
    }
    
    func instantiate<T>(backingStore: JPSRESTClient.JSON) -> T where T: JPSFSResource {
        return T(backingStore: backingStore)
    }
    
    func parse<T>(object: [String: String]) -> T where T: JPSFSResource
    {
        let resource = instantiate(backingStore: object)
        
        return (resource as! T)
    }
    
    func parse<T>(array: [[String: String]]) -> [T]
    {
        var resources = [T]()
        
        for aResource in array
        {
            let resource = (instantiate(backingStore: aResource) as! T)
            resources.append(resource)
        }
        
        return resources
    }
}
