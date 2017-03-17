//
//  JPSFSAspectRequestVenuePhotos.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/venues/photos
 */


class JPSFSAspectRequestVenuePhotos: JPSFSPagedAspectRequestVenue
{
    enum Group: String
    {
        case venue = "venue"
        case checkin = "checkin"
    }
    
    /**
        If not specified, public venue photos are returned ordered by relevance. Pass venue for public venue photos, ordered by recency. Pass checkin for venue photos from friends (including non-public photos from recent checkins), ordered by recency. See our documentation on photos for information on how to handle the response and construct actual photo URLs.
     */
    var group: Group?
    
    override var maxLimit: Int {
        get { return 200 }
    }
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/photos" }
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
        get { return [.foursquare] }
    }
}
