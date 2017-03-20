//
//  JPSFSSpecial.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
   https://developer.foursquare.com/docs/responses/special
*/


class JPSFSSpecial: JPSFSResource
{
    enum `Type`
    {
        case count
        case frequency
    }
    
    enum State
    {
        case unlocked
        case beforeStart
        case inProgress
        case taken
        case locked
    }
    
    /**
        count or frequency
     */
    internal(set) var type: `Type`!
    
    /**
        A message describing the special.
     */
    internal(set) var message: String!
    
    /**
        A description of how to unlock the special.
     */
    //internal(set) var description: String!
    
    /**
        The specific rules for this special.
     */
    internal(set) var finePrint: String!
    
    /**
        True or false indicating if this special is unlocked for the acting user.
     */
    internal(set) var unlocked: Bool!
    
    /**
        The name of the icon to use: http://foursquare.com/img/specials/icon.png
     */
    internal(set) var icon: String!
    
    /**
        The header text describing the type of special.
     */
    internal(set) var title: String!
    
    /**
        Possible values:
     
        unlocked
            the special is unlocked (all types)
     
        before start
            the time after which the special may be unlocked is in the future (flash specials)
        
        in progress
            the special is locked but could be unlocked if you check in (flash specials), or the special is locked but could be unlocked if enough of your friends check in (friends specials)
        
        taken
            the maximum number of people have unlocked the special for the day (flash and swarm specials)
        
        locked
            the special is locked (all other types)
     */
    internal(set) var state: JPSFSSpecial.State!
    
    /**
        A description of how close you are to unlocking the special. Either the number of people who have already unlocked the special (flash and swarm specials), or the number of your friends who have already checked in (friends specials)
     */
    internal(set) var progress: Int!
    
    /**
        A label describing what the number in the progress field means.
     */
    internal(set) var progressDescription: String!
    
    /**
        Minutes remaining until the special can be unlocked (flash special only).
     */
    internal(set) var detail: TimeInterval!
    
    /**
        A number indicating the maximum (swarm, flash) or minimum (friends) number of people allowed to unlock the special.
     */
    internal(set) var target: Int!
    
    /**
        A list of friends currently checked in, as compact user objects (friends special only).
     */
    internal(set) var friendsHere: [JPSFSUser]!
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func flag()
    {
        
    }
    
    // MARK: -
}
