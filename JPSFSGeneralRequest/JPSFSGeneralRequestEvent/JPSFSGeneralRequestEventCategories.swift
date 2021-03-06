//
//  JPSFSCategoriesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestEventCategories: JPSFSGeneralRequestEvent
{
    override var endPoint: String {
        get { return "\(super.endPoint)/categories" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
}
