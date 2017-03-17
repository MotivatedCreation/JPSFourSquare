//
//  JPSFSListsRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponseLists: JPSFSRequestResponse
{
    let list: JPSFSList!
    
    init(list aList: JPSFSList) {
        list = aList
    }
}
