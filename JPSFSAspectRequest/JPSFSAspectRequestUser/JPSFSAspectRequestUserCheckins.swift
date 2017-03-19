//
//  JPSFSAspectRequestUserCheckins.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/checkins
 */


class JPSFSAspectRequestUserCheckins: JPSFSPagedAspectRequest
{
    enum Sort: String
    {
        case newestFirst = "newestfirst"
        case oldestFirst = "oldestfirst"
    }
    
    /**
        How to sort the returned checkins. Can be newestfirst or oldestfirst.
     */
    var sort: Sort?
    
    /**
        Retrieve the first results to follow these seconds since epoch. This should be useful for paging forward in time, or when polling for changes. To avoid missing results when polling, we recommend subtracting several seconds from the last poll time and then de-duplicating.
     */
    var afterTimestamp: TimeInterval?
    
    /**
        Retrieve the first results prior to these seconds since epoch. Useful for paging backward in time.
     */
    var beforeTimestamp: TimeInterval?
    
    /**
        Number of results to return, up to 250.
     */
    override var maxLimit: Int {
        get { return 250 }
    }
    
    override var endPoint: String
    {
        get
        {
            self.id = "self"
            
            return "\(super.endPoint)/\(self.id)/checkins"
        }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
