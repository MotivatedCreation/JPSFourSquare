//
//  JPSFSSuggestCompletionVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueSuggestCompletion: JPSFSGeneralRequestVenue
{
    /**
        required Latitude and longitude of the user's location. (Required for query searches)
     */
    var ll: (latitude: Double, longitude: Double)!
    
    /**
        required unless ll is provided. A string naming a place in the world. If the near string is not geocodable, returns a failed_geocode error. Otherwise, searches within the bounds of the geocode. Adds a geocode object to the response. (Required for query searches)
     */
    var near: String!
    
    /**
        Accuracy of latitude and longitude, in meters. (Does not currently affect search results.)
     */
    var llAcc: Float?
    
    /**
        Altitude of the user's location, in meters. (Does not currently affect search results.)
     */
    var alt: Float?
    
    /**
        Accuracy of the user's altitude, in meters. (Does not currently affect search results.)
     */
    var altAcc: Float?
    
    /**
        required A search term to be applied against titles. Must be at least 3 characters long.
     */
    var query: String!
    
    /**
        Number of results to return, up to 100.
     */
    var limit: Int?
    
    /**
        Limit results to venues within this many meters of the specified location. Defaults to a city-wide area. The maximum supported radius is currently 80,000 meters.
     */
    var radius: Float?
    
    /**
        With ne, limits results to the bounding quadrangle defined by the latitude and longitude given by sw as its south-west corner, and ne as its north-east corner. The bounding quadrangle is only supported for intent=browse searches. Not valid with ll or radius. Bounding quadrangles with an area up to approximately 10,000 square kilometers are supported.
     */
    var sw: [Float]?
    
    /**
     See sw
     */
    var ne: [Float]?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/suggestcompletion" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
