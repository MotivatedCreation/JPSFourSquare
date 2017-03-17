//
//  JPSFSAddCheckinsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestCheckinAdd: JPSFSGeneralRequestCheckin
{
    enum Broadcast: String
    {
        case `private` = "private"
        case `public` = "public"
        case facebook = "facebook"
        case twitter = "twitter"
        case followers = "followers"
    }
    
    /**
        required The venue where the user is checking in. Find venue IDs by searching or from historical APIs.
    */
    var venueID: String!
    
    /**
        The event the user is checking in to.
     */
    var eventID: String?
    
    /**
        A message about your check-in. The maximum length of this field is 140 characters.
     */
    var shout: String?
    
    /**
        Mentions in your check-in. This parameter is a semicolon-delimited list of mentions. A single mention is of the form "start,end,userid", where start is the index of the first character in the shout representing the mention, end is the index of the first character in the shout after the mention, and userid is the userid of the user being mentioned. If userid is prefixed with "fbu-", this indicates a Facebook userid that is being mention. Character indices in shouts are 0-based.
     */
    var mentions: [String]?
    
    /**
        Who to broadcast this check-in to. Accepts a comma-delimited list of values:
        private
            off the grid
        public
            share with friends
        facebook
            share on facebook
        twitter
            share on twitter
        followers
            share with followers (celebrity mode users only)
        
        If no valid value is found, the default is public.
     */
    var broadcast: [Broadcast]? = [.`public`]
    
    /**
        Latitude and longitude of the user's location. Only specify this field if you have a GPS or other device reported location for the user at the time of check-in.
     */
    var ll: (latitude: Double, longitude: Double)?
    
    /**
        Accuracy of the user's latitude and longitude, in meters.
     */
    var llAcc: Float?
    
    /**
        Altitude of the user's location, in meters.
     */
    var alt: Float?
    
    /**
        Vertical accuracy of the user's location, in meters.
     */
    var altAcc: Float?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
