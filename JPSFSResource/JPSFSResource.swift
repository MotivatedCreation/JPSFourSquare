//
//  JPSFSModel.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation

@objc(JPSFSResource)
class JPSFSResource: NSObject
{
    static let JPSFSNeedsToProcessRequest: Notification.Name = Notification.Name(rawValue: "JPSFSNeedsToProcessRequest")
    
    enum BackingStoreState
    {
        case unknown
        case compact
        case complete
    }
    
    let backingStore: JPSRESTClient.JSON!
    
    /**
        A unique identifier for this object.
     */
    internal(set) var id: String!
    
    internal(set) var backingStoreState: BackingStoreState!
    
    required init(backingStore store: JPSRESTClient.JSON)
    {
        backingStore = store
        
        super.init()
        
        self.setValuesForKeys(self.backingStore)
    }
    
    func process(request: JPSFSRequest) {
        NotificationCenter.default.post(name: JPSFSResource.JPSFSNeedsToProcessRequest, object: request)
    }
}
