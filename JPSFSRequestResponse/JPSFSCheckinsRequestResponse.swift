//
//  JPSFSCheckinsRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSCheckinsRequestResponse
{
    let checkin: JPSFSCheckin!
    
    init(checkin aCheckin: JPSFSCheckin) {
        checkin = aCheckin
    }
}
