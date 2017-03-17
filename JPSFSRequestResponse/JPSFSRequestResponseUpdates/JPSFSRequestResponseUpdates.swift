//
//  JPSFSUpdatesRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseUpdates: JPSFSRequestResponse
{
    let update: JPSFSUpdate!
    
    init(update anUpdate: JPSFSUpdate) {
        update = anUpdate
    }
}
