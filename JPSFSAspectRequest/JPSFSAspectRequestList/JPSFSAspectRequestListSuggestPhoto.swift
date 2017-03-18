//
//  JPSFSAspectRequestListSuggestPhoto.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestListSuggestPhoto: JPSFSAspectRequestList
{
    /**
        required id of item on this list.
    */
    var itemID: String!
    
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/suggestphoto" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
