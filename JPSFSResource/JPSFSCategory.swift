//
//  JPSFSCategory.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
  https://developer.foursquare.com/docs/responses/category.html
*/


class JPSFSCategory: JPSFSResource
{
    /*
        Name of the category.
     */
    internal(set) var name: String!
    
    /*
        Pluralized version of the category name.
     */
    internal(set) var pluralName: String!
    
    /*
        Shorter version of the category name.
     */
    internal(set) var shortName: String!
    
    /*
        Pieces needed to construct category icons at various sizes. Combine prefix with a size (32, 44, 64, and 88 are available) and suffix, e.g. https://foursquare.com/img/categories/food/default_64.png. To get an image with a gray background, use bg_ before the size, e.g. https://foursquare.com/img/categories_v2/food/icecream_bg_32.png.
     */
    internal(set) var icon: JPSFSIcon!
    
    /*
        If this is the primary category for parent venue object.
     */
    internal(set) var primary: Bool?
    
    /*
        (only present in venues/categories response). A list of categories that are descendants of this category in the hierarchy.
     */
    internal(set) var categories: [JPSFSCategory]?
    
    // MARK: -
}
