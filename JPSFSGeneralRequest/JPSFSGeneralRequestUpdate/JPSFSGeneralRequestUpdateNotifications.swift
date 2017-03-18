//
//  JPSFSNotificationsUpdatesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestUpdateNotifications: JPSFSPagedGeneralRequestUpdate
{
    /**
     Maximum number of results to return, up to 99. Notifications are grouped over time, so there will usually be fewer than 99 results available at any given time.
     */
    override var maxLimit: Int {
        get { return 99 }
    }
    
    /**
     Used to page through results. Only the 99 most recent notifications are visible, so offset must be no more than 99 - limit.
     */
    override var maxOffset: Int {
        get { return 99 }
    }
    
    override var endPoint: String {
        get { return "\(super.endPoint)/notifications" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
}
