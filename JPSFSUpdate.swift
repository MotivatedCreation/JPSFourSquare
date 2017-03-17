//
//  JPSFSUpdate.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
  https://developer.foursquare.com/docs/responses/update
*/


class JPSFSUpdate
{
    enum ImageType
    {
        case user
        case special
        case points
        case bulletin
    }
    
    /**
        A list of identifiers for this update. This list will be longer than one element when various updates are grouped together to create one message.
    */
    internal(set) var ids: [String]!
    
    /**
        A timestamp (in seconds since the epoch) for when this update was created. If multiple update are grouped together, the newest timestamp is used.
     */
    internal(set) var createdAt: TimeInterval!
    
    /**
        Whether the user has read this update.
     */
    internal(set) var unread: Bool!
    
    /**
        The target object that should be opened when the user clicks on this update.
     */
    internal(set) var target: JPSFSTarget!
    
    /**
        The text associated with this updates.
     */
    internal(set) var text: String!
    
    /**
        A list with information about entities referenced in the text of the update. Each element of this list will include a "type" key and an "indices" key to indicate what kind of entity is being referenced and at what indices in the returned text. The valid values of "type" are "user" and "venue."
     */
    //internal(set) var entities: [String]!
    
    /**
        An image object with information about what image to associate with this update.
     */
    internal(set) var image: JPSFSImage!
    
    /**
        The type of the image returned in the image key, in case the client would like to do any custom styling. The possible values are "user", "special", "points", and "bulletin".
     */
    internal(set) var imageType: ImageType!
    
    /**
        Optional If present, the icon to display alongside this update.
     */
    internal(set) var icon: JPSFSIcon?
    
    // MARK: - Initialization Methods
    
    init() { }
    
    // MARK: - Actions
    
    func markNotificationsRead()
    {
        
    }
    
    // MARK: -
}
