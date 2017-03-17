//
//  JPSFSCheckin.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/responses/checkin
 */


class JPSFSCheckin: JPSFSUserResource
{
    enum `Type`
    {
        case checkin
        case shout
        case venueless
    }
    
    /*
        One of checkin, shout, or venueless.
    */
    internal(set) var type: String!
    
    /*
        The offset in minutes between when this check-in occurred and the same time in UTC. For example, a check-in that happened at -0500 UTC will have a timeZoneOffset of -300.
     */
    internal(set) var timeZoneOffset: TimeInterval!
    
    /*
        Seconds since epoch when this checkin was created.
     */
    internal(set) var createdAt: TimeInterval!
    
    /*
        If present, it indicates the checkin was marked as private and not sent to friends. It is only being returned because the owner of the checkin is viewing this data.
     */
    internal(set) var `private`: Bool?
    
    /*
        Message from check-in, if present and visible to the acting user.
     */
    internal(set) var shout: String?
    
    /*
        If the venue is not clear from context, and this checkin was at a venue, then a compact venue is present.
     */
    internal(set) var venue: JPSFSVenue?
    
    /*
        If the type of this checkin is shout or venueless, this field may be present and may contains a lat, lng pair and/or a name, providing unstructured information about the user's current location.
     */
    //internal(set) var location: String?
    
    /*
        If present, the name and url for the application that created this checkin.
     */
    //internal(set) var source: String?
    
    /*
        If the user checked into an event, this field will be present, containing the id and name of the event
     */
    //internal(set) var event: String?
    
    /*
        count and items for photos on this checkin. All items may not be present.
     */
    internal(set) var photos: [JPSFSPhoto]!
    
    /*
        count and items for comments on this checkin. All items may not be present.
     */
    internal(set) var comments: [JPSFSComment]!
    
    /*
        The count of users who have liked this checkin, and  groups containing any friends and others who have liked it. The groups included are subject to change.
     */
    //internal(set) var likes: String!
    
    /*
        count and items of checkins from friends checked into the same venue around the same time.
     */
    internal(set) var overlaps: JPSFSCheckin?
    
    /*
        total and scores for this checkin
     */
    //internal(set) var score: String?
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func deleteComment()
    {
        
    }
    
    func like()
    {
        
    }
    
    func addPost()
    {
        
    }
    
    func addComment()
    {
        
    }
    
    // MARK: -
}
