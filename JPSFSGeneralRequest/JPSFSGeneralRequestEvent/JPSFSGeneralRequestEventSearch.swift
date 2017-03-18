//
//  JPSFSSearchEventsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestEventSearch: JPSFSGeneralRequestEvent
{
    /**
        required Identifier for a known third-party event provider. This is used in conjunction with id. Currently songkick.com is the only supported value.
    */
    var domain: String! = "songkick.com"
    
    /**
        required Identifier used by third-party specifed in domain, which we will attempt to match against our events listings. eventId is the id of an event, participantId is the id of a participant, like a band or sports team.
     */
    var eventID: String!
    
    /**
        See eventID
     */
    var participantID: String!
    
    override var endPoint: String {
        get { return "\(super.endPoint)/search" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
}
