//
//  JPSFSRecentCheckinsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRecentCheckinsRequest: JPSFSCheckinsRequest
{
    /*
        Latitude and longitude of the user's location, so response can include distance.
    */
    var ll: CLLocation2D?
    
    /*
        Number of results to return, up to 100.
     */
    var limit: Int?
    
    /*
        Seconds after which to look for checkins, e.g. for looking for new checkins since the last fetch. If more than limit results are new since then, this is ignored. Checkins created prior to this timestamp will still be returned if they have new comments or photos, making it easier to poll for all new activity.
     */
    var afterTimestamp: TimeInterval?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/recent" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
