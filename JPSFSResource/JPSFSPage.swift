//
//  JPSFSPage.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
    https://developer.foursquare.com/docs/responses/page
*/

class JPSFSPage
{
    /*
        Title of the page.
    */
    internal(set) var title: String!
    
    /*
        Short description of the page.
     */
    internal(set) var description: String!
    
    /*
        URL containing a banner image.
     */
    internal(set) var banner: URL!
    
    /*
        Contains the count of links supplied for this page and an items array of link objects where each link object contains at least one of title and url. The order in the array is important and contains the main URL followed by supplemental links.
     */
    internal(set) var links: String!
    
    // MARK: - Initialization Methods
    
    init() { }
    
    // MARK: - Actions
    
    func follow()
    {
        
    }
    
    // MARK: -
}
