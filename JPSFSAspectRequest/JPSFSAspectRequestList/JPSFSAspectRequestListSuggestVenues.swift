//
//  JPSFSAspectRequestListSuggestVenues.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestListSuggestVenues: JPSFSAspectRequestList
{
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/suggestvenues" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
