//
//  JPSFSList.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
  https://developer.foursquare.com/docs/responses/list
*/


class JPSFSList: JPSFSUserResource
{
    /*
        The user-entered name for this list.
     */
    internal(set) var name: String!
    
    /*
        The user-entered list description.
     */
    internal(set) var description: String!
    
    /*
        The compact user who created this list.
     */
    
    /*
        Boolean indicating whether the acting user is following this list. Absent if there is no acting user.
     */
    internal(set) var following: Bool!
    
    /*
        count and items of users who follow this list. All items may not be present.
     */
    internal(set) var followers: [JPSFSUser]!
    
    /*
        Boolean indicating whether the acting user can edit this list. Absent if there is no acting user.
     */
    internal(set) var editable: Bool!
    
    /*
        Boolean indicating whether this list is editable by the owner's friends.
     */
    internal(set) var collaborative: Bool!
    
    /*
        count and items of users who have edited this list. All items may not be present.
     */
    internal(set) var collaborators: [JPSFSUser]!
    
    /*
        The canonical URL for this list, e.g. https://foursquare.com/dens/list/a-brief-history-of-foursquare
     */
    internal(set) var canonicalUrl: URL!
    
    /*
        A photo for this list.
     */
    internal(set) var photo: JPSFSPhoto?
    
    /*
        The number of unique venues on the list.
     */
    internal(set) var venueCount: Int!
    
    /*
        The number of venues on the list visited by the acting user. Absent if there is no acting user.
     */
    internal(set) var visitedCount: Int!
    
    /*
        count and items of list items on this list.
     */
    internal(set) var listItems: [JPSFSListItem]!
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func update()
    {
        
    }
    
    func deleteItem()
    {
        
    }
    
    func updateItem()
    {
        
    }
    
    func follow()
    {
        
    }
    
    func unfollow()
    {
        
    }
    
    func moveItem()
    {
        
    }
    
    func share()
    {
        
    }
    
    func addItem()
    {
        
    }
    
    // MARK: -
}
