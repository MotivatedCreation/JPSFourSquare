//
//  JPSFSAspectRequestListTodos.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestListUserTodos: JPSFSAspectRequestList
{
    enum Sort: String
    {
        case nearby = "nearby"
        case recent = "recent"
    }
    
    /**
        Identity of the user to get todos for. Pass self to get todos of the acting user.
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
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.userID)/todos" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
