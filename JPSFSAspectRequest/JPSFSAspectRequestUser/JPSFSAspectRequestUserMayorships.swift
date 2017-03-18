//
//  JPSFSAspectRequestUserMayorships.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/mayorships
 */


class JPSFSAspectRequestUserMayorships: JPSFSAspectRequestUser
{
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.id)/mayorships" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
