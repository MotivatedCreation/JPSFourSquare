//
//  JPSFSAspectRequestUserLists.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/lists
 */


class JPSFSAspectRequestUserLists: JPSFSPagedAspectRequestUser
{
    enum Group: String
    {
        case created = "created"
        case edited = "edited"
        case followed = "followed"
        case friends = "friends"
        case suggested = "suggested"
    }
    
    /**
        can be created (lists created by this user), edited (other people's lists this user has edited), followed (lists this user follows), friends (lists from this user's friends), and suggested (lists relevant to the user's current location).
     */
    var group: Group?
    
    /**
        Location of the user, required in order to receive the suggested group.
     */
    var ll: (latitude: Double, longitude: Double)?
    
    /**
        Number of results to return, up to 200.
     */
    override var maxLimit: Int {
        get { return 200 }
    }
    
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.id)/lists" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
