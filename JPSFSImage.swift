//
//  JPSFSImage.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
    https://developer.foursquare.com/docs/responses/image.html
*/


class JPSFSImage
{
    /**
        The common prefix of the URL for all sizes of this resource.
     */
    internal(set) var prefix: String!
    
    /**
        A list of sizes for which this image is available.
     */
    internal(set) var sizes: [CGSize]!
    
    /**
        The final piece of the URL of the image.
     */
    internal(set) var name: String!
    
    /**
        The full URL of the image.
     */
    internal(set) var fullPath: URL?
}
