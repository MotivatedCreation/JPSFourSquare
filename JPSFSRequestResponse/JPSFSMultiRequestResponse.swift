//
//  JPSFSMultiRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSMultiRequestResponse
{
    let responses: [JPSFSRequestResponse]!
    
    init(responses theResponses: [JPSFSRequestResponse]) {
        responses = theResponses
    }
}
