//
//  JPSFSAspectRequestUserPhotos.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/photos
 */


class JPSFSAspectRequestUserPhotos: JPSFSPagedAspectRequestUser
{
    /**
     Number of results to return, up to 500.
     */
    override var maxLimit: Int {
        get { return 500 }
    }
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.id)/photos" }
    }

    override var requiresActingUser: Bool {
        get { return true }
    }
}
