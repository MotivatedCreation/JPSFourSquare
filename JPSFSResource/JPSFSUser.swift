//
//  JPSFSUser.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/responses/user
 */


class JPSFSUser: JPSFSResource
{
    enum Gender
    {
        case none
        case male
        case female
    }
    
    enum `Type`
    {
        case page
        case chain
        case celebrity
        case venuePage
    }
    
    enum Relationship
    {
        case `self`
        case friend
        case pendingMe
        case pendingThem
        case followingThem
    }
    
    /**
        A user's first name.
     */
    internal(set) var firstName: String!
    
    /**
        A user's last name.
     */
    internal(set) var lastName: String!
    
    /**
        Contains prefix and suffix, similar to the format for photo. Accepted sizes are 36x36, 100x100, 300x300, and 500x500.
     */
    //internal(set) var photo: [String]!
    
    /**
        The relationship of the acting user (me) to this user (them). One of self, friend, pendingMe (user has sent a friend request that acting user has not accepted), pendingThem (acting user has sent a friend request to the user but they have not accepted), or followingThem (acting user is following a celebrity or page). If there is no relationship or pending request between the two users, the node is absent. If the acting user is a celebrity, does not indicate whether the user is following them. 
     
        If pendingme, applications will want to the acting user to an approve/ignore action. If pendingthem, applications will want to show the acting user a "pending" message.
     */
    internal(set) var relationship: Relationship?
    
    /**
        Contains count of friends for this user and groups of users who are friends. Right now will only contain a group where type is  friends, but it's subject to change. Groups are omitted when viewing  self The full set of friends is at users/XXX/friends.
     */
    //internal(set) var friends: String
    
    /**
        Present for non-standard user types. One of page, chain, celebrity, or venuePage. Pages are brand pages, such as Bravo, chains are pages that own a set of venues, like Starbucks, celebrities are users that other users can follow, like Mario Batali, and venuePages represent single venues creating content, such as My ArenA creating updates. venuePage's do not really have a user profile, show the veue page instead.
     */
    internal(set) var type: `Type`?
    
    /**
        For venuePage users, this field just contains an id for the relevant venue.
     */
    internal(set) var venue: String?
    
    /**
        User's home city
     */
    internal(set) var homeCity: String!
    
    /**
        male, female, or none
     */
    internal(set) var gender: Gender!
    
    /**
        An object containing none, some, or all of twitter, facebook, email, and phone. Both are strings.
     */
    internal(set) var contact: [String]!
    
    /**
        A short bio for the user.
     */
    internal(set) var bio: String?
    
    /**
        In compact users, if present, contains the count of tips from this user. In full users, contains count and an array of selected tips as items, which may or may not be empty. Full set of items at users/XXX/tips
     */
    //internal(set) var tips: String?
    
    /**
        If this user has lists, groups contains created for lists created by this user. In compact, just the count is provided, and in full, some sample lists are included. In full form, lists also contains a count of the lists created and followed by this user. Full set of items at users/XXX/lists
     */
    //internal(set) var lists: String?
    
    /**
        If this user can have followers (i.e. it's a celebrity, venue, or page), contains count of followers for this user in compact, and, in detail, groups of users who follow this user, split into friends and others.
     */
    //internal(set) var followers: String?
    
    /**
        groups of pages this user has followed.
     */
    //internal(set) var following: String!
    
    /**
        Contains the count of mayorships for this user and an items array that for now is empty. Use users/XXX/mayorships to get actual mayorships.
     */
    //internal(set) var mayorships: String!
    
    /**
        Contains the count of photos this user has. May contain an array of selected photos as items, full set of items at users/XXX/photos, but only visible to self.
     */
    internal(set) var photos: [JPSFSPhoto]!
    
    /**
        Contains recent, max, checkinsCount, and goal for showing user's current game status.
     */
    //internal(set) var scores: String!
    
    /**
        Contains the count of checkins by this user. May contain the most recent checkin as an array items containing a single element, if the user is a friend. Users can fetch users/XXX/checkins for their own complete history.
     */
    internal(set) var checkins: [JPSFSCheckin]!
    
    /**
        Contains a detailed page, if they are a page.
     */
    internal(set) var pageInfo: JPSFSPage?
    
    /**
        Whether we receive pings from this user, if we have a relationship.
     */
    internal(set) var pings: Bool?
    
    /**
        Contains count of pending friend requests for this user.
     */
    internal(set) var requests: Int?
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func deny()
    {
        
    }
    
    func setPings()
    {
        
    }
    
    func update()
    {
        
    }
    
    func unfriend()
    {
        
    }
    
    func approve()
    {
        
    }
    
    // MARK: -
}
