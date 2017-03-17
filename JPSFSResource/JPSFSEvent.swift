//
//  JPSFSEvent.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/responses/event
*/


class JPSFSEvent: JPSFSResource
{
    /**
        A name for this event.
     */
    internal(set) var name: String!
    
    /**
        The primary url for more information about this event.
     */
    internal(set) var url: URL!
    
    /**
        The count of ids of this event in third-party services, plus items, an array of domain, the third party provider, and id, the id in their system.
     */
    //internal(set) var foreignIds: String!
    
    /**
        An array, possibly empty, of categories that have been applied to this event. One of the categories will have a field primary indicating that it is the primary category for the venue. For the complete set of categories, see events/categories.
     */
    internal(set) var categories: [JPSFSCategory]!
    
    /**
        The count of users currently checked in to the event, plus groups of different types of users and their checkins
     */
    //internal(set) var herenow: String?
    
    /**
        Object containing checkinsCount and usersCount, which indicate the number of check-ins and unique visitors at the event, respectively.
     */
    //internal(set) var stats: String?
    
    /**
        Time when the event is scheduled to start, in seconds since Unix epoch.
     */
    internal(set) var startAt: TimeInterval?
    
    /**
        Time when the event is scheduled to end, in seconds since Unix epoch.
     */
    internal(set) var endAt: TimeInterval?
    
    /**
        Boolean indicating whether this is an all-day event.
     */
    internal(set) var allDay: Bool?
    
    /**
        Present if the event is all-day. Represents the date of the event (midnight), in seconds since Unix epoch.
     */
    internal(set) var date: TimeInterval?
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func add()
    {
        
    }
    
    // MARK: -
}
