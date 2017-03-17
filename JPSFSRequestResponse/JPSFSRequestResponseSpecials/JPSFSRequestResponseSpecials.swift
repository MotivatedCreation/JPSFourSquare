//
//  JPSFSSpecialsRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseSpecials: JPSFSRequestResponse
{
    let special: JPSFSSpecial!
    
    init(special aSpecial: JPSFSSpecial) {
        special = aSpecial
    }
}
