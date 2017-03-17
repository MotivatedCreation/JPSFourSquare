//
//  JPSFSPagedAspectRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSPagedAspectRequest: JPSFSAspectRequest
{
    /*
        Number of results to return.
     */
    var limit: Int
    {
        get { return self.limit }
        set
        {
            guard let _ = self.maxLimit else
            {
                self.limit = newValue
                
                return
            }
            
            if newValue > self.maxLimit! { self.limit = self.maxLimit! }
        }
    }
    
    /*
        Used to page through results. Must specify a group
     */
    var offset: Int = 0
    
    var maxLimit: Int {
        get { return 50 }
    }
    
    override var endPoint: String {
        get { return "" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var userRestrictions: [UserRestrictions] {
        get { return [.none] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
