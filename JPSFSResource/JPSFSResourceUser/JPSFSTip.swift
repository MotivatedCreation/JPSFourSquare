//
//  JPSFSTip.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
  https://developer.foursquare.com/docs/responses/tip
*/


class JPSFSTip: JPSFSUserResource
{
    enum Status
    {
        case todo
    }
    
    /**
        The actual tip.
     */
    internal(set) var text: String!
    
    /**
        Seconds since epoch when their tip was created.
     */
    internal(set) var createdAt: TimeInterval!
    
    /**
        Will be todo or absent, depending on the user's relationship to the tip.
     */
    internal(set) var status: String?
    
    /**
        A URL for more information.
     */
    internal(set) var url: URL?
    
    /**
        If there is a photo for this tip and the tip is not already container inside of a photo element, details about the photo.
     */
    internal(set) var photo: JPSFSPhoto?
    
    /**
        If the context allows tips from multiple users, the compact user that created this tip.
     */
    
    /**
        If the context allows tips from multiple venues, the compact venue for this tip.
     */
    internal(set) var venue: JPSFSVenue?
    
    /**
        The count of users who have marked this tip todo, and  groups containing any friends who have marked it to-do. The groups included are subject to change. (Note that to-dos are only visible to friends!)
     */
    //internal(set) var todo: String!
    
    /**
        The count of users who have liked this tip, and  groups containing any friends and others who have liked it. The groups included are subject to change.
     */
    //internal(set) var likes: String!
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func unmark()
    {
        
    }
    
    func flag()
    {
        
    }
    
    func like()
    {
        
    }
    
    // MARK: -
}
