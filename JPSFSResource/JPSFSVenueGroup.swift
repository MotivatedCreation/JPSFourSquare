//
//  JPSFSVenueGroup.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/responses/venuegroup
 */


class JPSFSVenueGroup: JPSFSResource
{
    /**
        The name of the venue group
    */
    internal(set) var name: String!
    
    /**
     An object containing:
        count	A count of venues
        items	An array of venue ids
    */
    internal(set) var venues: [String]!
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func update()
    {
        
    }
    
    func addVenue()
    {
        
    }
    
    func edit()
    {
        
    }
    
    func removeVenue()
    {
        
    }
    
    // MARK: -
}
