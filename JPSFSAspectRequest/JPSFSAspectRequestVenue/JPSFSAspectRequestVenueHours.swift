//
//  JPSFSAspectRequestVenueHours.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
    https://developer.foursquare.com/docs/venues/hours
 */


class JPSFSAspectRequestVenueHours: JPSFSAspectRequestVenue
{
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/hours" }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
