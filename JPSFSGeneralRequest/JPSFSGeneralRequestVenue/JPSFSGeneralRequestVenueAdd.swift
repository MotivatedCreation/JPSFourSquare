//
//  JPSFSAddVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueAdd: JPSFSGeneralRequestVenue
{
    /*
        required the name of the venue
    */
    var name: String!
    
    /*
        The address of the venue.
     */
    var address: String?
    
    /*
        The nearest intersecting street or streets.
     */
    var crossStreet: String?
    
    /*
        The city name where this venue is.
     */
    var city: String?
    
    /*
        The nearest state or province to the venue.
     */
    var state: String?
    
    /*
        The zip or postal code for the venue.
     */
    var zip: String?
    
    /*
        The phone number of the venue.
     */
    var phone: String?
    
    /*
        The twitter handle of the venue.
     */
    var twitter: String?
    
    /*
        required Latitude and longitude of the venue, as accurate as is known.
     */
    var ll: (latitude: Double, longitude: Double)?
    
    /*
        The ID of the category to which you want to assign this venue.
     
        Although optional, we strongly recommend that developers pass in the primaryCategoryId parameter to assign the new venue a category. The resulting venues become more meaningful within Foursquare and are more easily searchable by other users. We recommend that applications show their users our category hierarchy (obtained from venues/categories) and allow them to choose something suitable. 
     */
    var primaryCategoryId: String?
    
    /*
        A freeform description of the venue, up to 160 characters.
     */
    var description: String?
    
    /*
        The url of the homepage of the venue.
     */
    var url: URL?
    
    /*
        A boolean flag telling the server to ignore duplicates and force the addition of this venue.
     */
    var ignoreDuplicates: Bool?
    
    /*
        Required if ignoreDuplicates is true. This key will be available in the response of the HTTP 409 error of the first (failed) attempt to add venue.
     */
    var ignoreDuplicatesKey: String?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
