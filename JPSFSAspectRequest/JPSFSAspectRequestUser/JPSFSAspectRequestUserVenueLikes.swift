//
//  JPSFSAspectRequestUserVenueLikes.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/venuelikes
 */


class JPSFSAspectRequestUserVenueLikes: JPSFSPagedAspectRequestUser
{
    /**
        Seconds since epoch.
     */
    var beforeTimestamp: TimeInterval?
    
    /**
        Seconds since epoch.
     */
    var afterTimestamp: TimeInterval?
    
    /**
        Limits returned venues to those in this category. If specifying a top-level category, all sub-categories will also match the query.
     */
    var categoryID: String?
    
    override var maxLimit: Int {
        get { return 250 }
    }
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.id)/venuelikes" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
