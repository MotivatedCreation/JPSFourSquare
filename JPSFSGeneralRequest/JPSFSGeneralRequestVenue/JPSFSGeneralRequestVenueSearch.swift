//
//  JPSFSSearchVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation
import CoreLocation


class JPSFSGeneralRequestVenueSearch: JPSFSGeneralRequestVenue
{
    enum Intent: String
    {
        /*
            Finds results that the current user (or, for userless requests, a typical user) is likely to check in to at the provided ll at the current moment in time. This is the intent we recommend most apps use.
        */
        case checkin
        
        /*
            Find venues within a given area. Unlike the checkin intent, browse searches an entire region instead of only finding Venues closest to a point. You must define a region to search be including either the ll and radius parameters, or the sw and ne. The region will be a spherical cap if you include the ll and radius parameters, or it will be a bounding quadrangle if you include the sw and ne parameters.
        */
        case browse
        
        /*
            Finds the most globally relevant venues for the search, independent of location. Ignores all other parameters other than query and limit.
        */
        case global
        
        /*
            Finds venues that are are nearly-exact matches for the given parameters. This intent is highly sensitive to the provided location. We recommend using this intent only when trying to correlate an existing place database with Foursquare's. The results will be sorted best match first, taking distance and spelling mistakes/variations into account.
        */
        case match
    }
    
    /*
        required unless near is provided. Latitude and longitude of the user's location. (Required for query searches). Optional if using intent=global
    */
    var ll: CLLocation2D!
    
    /*
        required unless ll is provided. A string naming a place in the world. If the near string is not geocodable, returns a failed_geocode error. Otherwise, searches within the bounds of the geocode. Adds a geocode object to the response. (Required for query searches)
    */
    var near: String!
    
    /*
        Accuracy of latitude and longitude, in meters. (Does not currently affect search results.)
    */
    var llAcc: Float?
    
    /*
        Altitude of the user's location, in meters. (Does not currently affect search results.)
    */
    var alt: Float?
    
    /*
        Accuracy of the user's altitude, in meters. (Does not currently affect search results.)
    */
    var altAcc: Float?
    
    /*
        A search term to be applied against venue names.
    */
    var query: String?
    
    /*
        Number of results to return, up to 50.
    */
    var limit: Int?
    
    /*
        One of the values below, indicating your intent in performing the search. If no value is specified, defaults to checkin.
     
        checkin, browse, global, match
     
        query and ll are the only required parameters for this intent, but matching also supports phone, address, city, state, zip, and twitter. There's no specified format for these parameters—we do our best to normalize them and drop them from the search if unsuccessful.
    */
    var intent: Intent? = .checkin
    
    /*
        Limit results to venues within this many meters of the specified location. Defaults to a city-wide area. Only valid for requests with intent=browse, or requests with intent=checkin and categoryId or query. Does not apply to match intent requests. The maximum supported radius is currently 100,000 meters.
    */
    var radius: Float?
    
    /*
        With ne, limits results to the bounding quadrangle defined by the latitude and longitude given by sw as its south-west corner, and ne as its north-east corner. The bounding quadrangle is only supported for intent=browse searches. Not valid with ll or radius. Bounding quadrangles with an area up to approximately 10,000 square kilometers are supported.
    */
    var sw: [Float]?
    
    /*
        See sw
    */
    var ne: [Float]?
    
    /*
        A comma separated list of categories to limit results to. If you specify categoryId specifying a radius may improve results. If specifying a top-level category, all sub-categories will also match the query. Does not apply to match intent requests.
    */
    var categoryID: [String]?
    
    /*
        A third-party URL which we will attempt to match against our map of venues to URLs.
    */
    var url: URL?
    
    /*
        Identifier for a known third party that is part of our map of venues to URLs, used in conjunction with linkedId.
    */
    var providerID: String?
    
    /*
        1002207971611 Identifier used by third party specified in providerId, which we will attempt to match against our map of venues to URLs.
    */
    var linkedID: Int?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/search" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var requiresActingUser: Bool {
        get { return false }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare, .swarm] }
    }
}
