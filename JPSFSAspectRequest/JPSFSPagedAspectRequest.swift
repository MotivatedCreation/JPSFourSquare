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
    /**
     Number of results to return.
     */
    var limit: Int
    {
        get { return self.limit }
        set { if newValue > self.maxLimit { self.limit = self.maxLimit } }
    }
    
    /**
     Used to page through results. Must specify a group
     */
    var offset: Int = 0
    
    var maxLimit: Int {
        get { return 50 }
    }
}
