//
//  JPSFSSettingsRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseSettings: JPSFSRequestResponse
{
    let value: AnyObject
    
    init(value aValue: AnyObject) {
        value = aValue
    }
}
