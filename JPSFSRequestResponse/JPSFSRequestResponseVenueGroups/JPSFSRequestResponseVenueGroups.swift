//
//  JPSFSVenueGroupsRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseVenueGroups: JPSFSRequestResponse
{
    let venueGroup: JPSFSVenueGroup!
    
    init(venueGroup aVenueGroup: JPSFSVenueGroup) {
        venueGroup = aVenueGroup
    }
}
