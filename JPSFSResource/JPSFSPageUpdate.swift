
//
//  JPSFSPageUpdate.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
 https://developer.foursquare.com/docs/responses/pageupdate
*/


class JPSFSPageUpdate: JPSFSResource
{
    /*
        The timestamp (in seconds since epoch) when this update was created.
     */
    internal(set) var createdAt: TimeInterval!
    
    /*
        A compact user object representing the page that created this update.
     */
    internal(set) var page: JPSFSUser!
    
    /*
        The copy text that is associated with the update, if any.
     */
    internal(set) var shout: String!
    
    /*
        An array of photo objects representing the photos associated with this update.
     */
    internal(set) var photos: [JPSFSPhoto]!
    
    /*
        The special campaign attached to this update, if any.
     */
    internal(set) var campaign: JPSFSCampaign!
    
    /*
        An array of compact venue objects representing the individual venues this update is associated with.
     */
    internal(set) var venues: [JPSFSVenue]!
    
    /*
        An array of venue group objects representing the venue group this update is associated with, if any.
     */
    internal(set) var venueGroups: [JPSFSVenueGroup]!
    
    /*
        A compact user object representing the chain this update is associated with, if any.
     */
    internal(set) var chain: JPSFSUser!
    
    /*
        The canonical URL for this update.
     */
    internal(set) var canonicalUrl: URL!
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func like()
    {
        
    }
    
    func delete()
    {
        
    }
    
    // MARK: -
}
