//
//  JPSFSResponseMeta.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/19/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseMeta: JPSFSRequestResponse
{
    let backingStore: JPSRESTClient.JSON!
    
    var requestId: String?
    var httpStatusCode: HTTPStatusCode?
    
    init(backingStore store: JPSRESTClient.JSON)
    {
        backingStore = store
        
        super.init()
        
        self.setValuesForKeys(self.backingStore)
    }
}
