//
//  JPSFSAddListsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestListAdd: JPSFSGeneralRequestList
{
    /**
        required The name of the list.
    */
    var name: String!
    
    /**
        The description of the list.
     */
    //var description: String?
    
    /**
        Boolean indicating if this list can be edited by friends.
     */
    var collaborative: Bool?
    
    /**
        The id of a photo that should be set as the list photo.
     */
    var photoID: String?
    
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
