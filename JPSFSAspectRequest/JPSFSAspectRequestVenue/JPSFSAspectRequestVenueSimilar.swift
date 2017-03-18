//
//  JPSFSAspectRequestVenuesSimilar.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
    https://developer.foursquare.com/docs/venues/similar
 */


class JPSFSAspectRequestVenueSimilar: JPSFSAspectRequestVenue
{
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/similar" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
