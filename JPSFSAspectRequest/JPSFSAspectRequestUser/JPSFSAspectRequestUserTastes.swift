//
//  JPSFSAspectRequestUserTastes.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/users/tastes
 */


class JPSFSAspectRequestUserTastes: JPSFSAspectRequestUser
{
    override var endPoint: String {
        get { return "\(super.endPoint)/\(self.id)/tastes" }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
