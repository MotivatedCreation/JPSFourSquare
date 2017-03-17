//
//  JPSFSListItem.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/responses/item.html
*/


class JPSFSListItem: JPSFSUserResource
{
    /**
        The compact user who added this item to the current list. Only present when viewing a specific list and when the user is the not same as the list owner.
     */
    
    /**
        A photo for this item. If no photo has been explicitly set on this item, but the tip contains a photo it will be returned in this field.
     */
    internal(set) var photo: JPSFSPhoto?
    
    /**
        The compact venue this item is for, unless the venue is clear from context.
     */
    internal(set) var venue: JPSFSVenue?
    
    /**
        If this item contains a tip, then a compact tip is present.
     */
    internal(set) var tip: JPSFSTip?
    
    /**
        Text entered by the user when creating this item. This field is private and only returned to the author.
     */
    internal(set) var note: String?
    
    /**
        Seconds since epoch when this item was added to the list.
     */
    internal(set) var createdAt: TimeInterval?
    
    /**
        Information about what other lists this item appears on. If present, an array of compact lists.
     */
    internal(set) var listed: [JPSFSList]?
}
