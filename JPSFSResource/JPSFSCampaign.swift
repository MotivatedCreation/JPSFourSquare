//
//  JPSFSCampaign.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/responses/campaign.html
 */


class JPSFSCampaign: JPSFSResource
{
    /**
        An object containing:
        id
            A unique identifier for this special.
        text
            special text (shown when the user has unlocked the special)
        name
            name for the special (optional)
     */
    //internal(set) var special: String!
    
    /**
        DateTime when the campaign is to be started (seconds since epoch)
     */
    internal(set) var startsAt: TimeInterval!
    
    /**
        DateTime when the campaign is to be automatically deactivated (seconds since epoch)
     */
    internal(set) var endsAt: TimeInterval!
    
    /**
        An object containing:
        count
            A count of venues
        items
            An array of venue ids
     */
    internal(set) var venues: [String]!
    
    /**
        An object containing:
        count
            A count of venuegroups
        items
            An array of venuegroup ids
     */
    internal(set) var venueGroups: [String]!
    
    // MARK: -
}
