//
//  JPSFSAspectRequestListTips.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestListUserTips: JPSFSPagedAspectRequestList
{
    enum Sort: String
    {
        case nearby = "nearby"
        case recent = "recent"
        case popular = "popular"
    }
    
    /**
        Identity of the user to get tips from. Pass self to get tips of the acting user.
    */
    var userID: String!
    
    /**
        One of nearby or recent. Nearby requires geolat and geolong to be provided.
     */
    var sort: Sort?
    
    /**
        Latitude and longitude of the user's location.
     */
    var ll: (latitude: Double, longitude: Double)?
    
    /**
        Number of results to return, up to 500.
    */
    override var maxLimit: Int {
        get { return 500 }
    }
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.userID)/tips" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
