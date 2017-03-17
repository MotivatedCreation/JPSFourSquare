//
//  JPSFSPhotosRequestResponse.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSRequestResponsePhotos: JPSFSRequestResponse
{
    let photo: JPSFSPhoto!
    
    init(photo aPhoto: JPSFSPhoto) {
        photo = aPhoto
    }
}
