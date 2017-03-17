//
//  JPSFSAddTipsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestTipAdd: JPSFSGeneralRequestTip
{
    enum Broadcast: String
    {
        case twitter = "twitter"
        case facebook = "facebook"
    }
    
    /**
        required The venue where you want to add this tip.
    */
    var venueID: String!
    
    /**
        required The text of the tip, up to 200 characters.
     */
    var text: String!
    
    /**
        A URL related to this tip.
     */
    var url: URL?
    
    /**
        Whether to broadcast this tip. Send twitter if you want to send to twitter, facebook if you want to send to facebook, or twitter,facebook if you want to send to both.
     */
    var broadcast: [Broadcast]?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
