//
//  JPSFSGeneralRequestCheckin.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestCheckin: JPSFSGeneralRequest
{
    override var endPoint: String {
        get { return "checkins" }
    }
}
