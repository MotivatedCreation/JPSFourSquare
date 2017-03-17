//
//  JPSFSAddPagesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestPageUpdateAdd: JPSFSGeneralRequestPageUpdate
{
    enum Broadcast: String
    {
        case facebook = "facebook"
        case twitter = "twitter"
        case `private` = "private"
    }
    
    /**
        required id of the page to associate with the broadcast. To find the page for a venue you can look at the page object in the venue response.
    */
    var pageID: String!
    
    /**
        The venue group from which to broadcast an update.
     */
    var groupID: String?
    
    /**
        A venue from which to broadcast an update.
     */
    var venueID: String?
    
    /**
        Text associated with the broadcast. 160 characters max, 10 characters min.
     */
    var shout: String?
    
    /**
        An optional photo to attach to the broadcast. For a new photo, you should use the photo add endpoint and specify only the pageId parameter.
     */
    var photoID: String?
    
    /**
        Additional places to send the broadcast to. Accepts a comma-delimited list of values:
        facebook
            share on facebook
        twitter
            share on twitter
        private
            just create the update without broadcasting to anyone
     */
    var broadcast: [Broadcast]?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
