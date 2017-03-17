//
//  JPSFSTrendingVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation
import CoreLocation


class JPSFSGeneralRequestVenueTrending: JPSFSGeneralRequestVenue
{
    /*
        required Latitude and longitude of the user's location.
     */
    var ll: CLLocation2D!
    
    /*
        Number of results to return, up to 50.
     */
    var limit: Int?
    
    /*
        Radius in meters, up to approximately 2000 meters.
     */
    var radius: Float?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/trending" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
