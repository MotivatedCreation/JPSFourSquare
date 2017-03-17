//
//  JPSFSResolveCheckinsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestCheckinResolve: JPSFSGeneralRequestCheckin
{
    /**
        Required. The short ID at the end of a swarmapp.com link, e.g., https://swarmapp.com/c/abc123ZYX
    */
    var shortID: String!
    
    override var endPoint: String {
        get { return "\(super.endPoint)/resolve" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.swarm] }
    }
}
