//
//  JPSFSUserObject.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSUserResource: JPSFSResource
{
    /*
     If the user is not clear from context, then a compact user is present
     */
    internal(set) var user: JPSFSUser?
}
