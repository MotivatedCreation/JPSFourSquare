//
//  JPSFSTarget.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/responses/target.html
*/


class JPSFSTarget
{
    enum `Type`
    {
        case user
        case checkin
        case venue
        case tip
        case badge
        case special
        case url
    }
    
    /**
        The type of the associated object. Valid values are "user", "checkin", "venue", "tip", "badge", "special", and "url".
     */
    internal(set) var type: String!
    
    /**
        An object of the type specified by type -- one of a user, a checkin, a venue, a tip, or an url object with a single "url" key.
     */
    //internal(set) var object: String!
}
