//
//  JPSFSExploreVenuesRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestVenueExplore: JPSFSPagedGeneralRequestVenue
{
    enum Section: String
    {
        case food = "food"
        case drinks = "drinks"
        case coffee = "coffee"
        case shops = "shops"
        case arts = "arts"
        case outdoors = "outdoors"
        case sights = "sights"
        case trending = "trending"
        case specials = "specials"
        case nextVenues = "nextVenues"
        case topPicks = "topPicks"
    }
    
    enum Novelty: String
    {
        case new = "new"
        case old = "old"
    }
    
    enum FriendVisits: String
    {
        case visited = "visited"
        case notVisited = "notvisited"
    }
    
    enum Time: String
    {
        case any = "any"
    }
    
    enum Day: String
    {
        case any = "any"
    }
    
    enum Price: Int
    {
        case leastExpensive = 1
        case moderatelyExpensive = 2
        case expensive = 3
        case mostExpensive = 4
    }
    
    /**
        required unless near is provided. Latitude and longitude of the user's location.
     */
    var ll: (latitude: Double, longitude: Double)!
    
    /**
        required unless ll is provided. A string naming a place in the world. If the near string is not geocodable, returns a failed_geocode error. Otherwise, searches within the bounds of the geocode and adds a geocode object to the response.
     */
    var near: String!
    
    /**
        Accuracy of latitude and longitude, in meters.
     */
    var llAcc: Float?
    
    /**
        Altitude of the user's location, in meters.
     */
    var alt: Float?
    
    /**
        Accuracy of the user's altitude, in meters.
     */
    var altAcc: Float?
    
    /**
        Radius to search within, in meters. If radius is not specified, a suggested radius will be used based on the density of venues in the area.
     */
    var radius: Float?
    
    /**
        One of food, drinks, coffee, shops, arts, outdoors, sights, trending or specials, nextVenues (venues frequently visited after a given venue), or topPicks (a mix of recommendations generated without a query from the user). Choosing one of these limits results to venues with the specified category or property.
    */
    var section: Section?
    
    /**
        A term to be searched against a venue's tips, category, etc. The query parameter has no effect when a section is specified.
     */
    var query: String?
    
    /**
        Pass new or old to limit results to places the acting user hasn't been or has been, respectively. Omitting this parameter returns a mixture of old and new venues.
     */
    var novelty: Novelty?
    
    /**
        Pass visited or notvisited to limit results to places the acting user's friends have or haven't been, respectively. Omitting this parameter returns a mixture of venues to which the user's friends have or haven't been.
     */
    var friendVisits: FriendVisits?
    
    /**
        Pass any to retrieve results for any time of day. Omitting this parameter returns results targeted to the current time of day.
     */
    var time: Time?
    
    /**
        Pass any to retrieve results for any day of the week. Omitting this parameter returns results targeted to the current day of the week.
     */
    var day: Day?
    
    /**
        Boolean flag to include a photo in the response for each venue, if one is available. Default is 0 (no photos). Photos are returned as part of the venue JSON object.
     */
    var venuePhotos: Bool? = false
    
    /**
        A venue ID to use in combination with the intent=nextVenues parameter, which returns venues users often visit after a given venue. If intent=nextVenues is specified but lastVenue is not, the user's last check-in will be used if it is within 2 hours. If the user has not checked in within the last 2 hours, no results will be returned.
     */
    var lastVenue: String?
    
    /**
        Boolean flag to only include venues that are open now. This prefers official provider hours but falls back to popular check-in hours.
     */
    var openNow: Bool?
    
    /**
        Boolean flag to sort the results by distance instead of relevance.
     */
    var sortByDistance: Bool?
    
    /**
        Comma separated list of price points. Currently the valid range of price points are [1,2,3,4], 1 being the least expensive, 4 being the most expensive. For food venues, in the United States, 1 is < $10 an entree, 2 is $10-$20 an entree, 3 is $20-$30 an entree, 4 is > $30 an entree.
     */
    var price: Price?
    
    /**
        Boolean flag to only include venues that the user has saved on their To-Do list or to another list.
     */
    var saved: Bool?
    
    /**
        Boolean flag to only include venues that have a special.
     */
    var specials: Bool?
    
    /**
     Number of results to return, up to 50.
     */
    override var maxLimit: Int {
        get { return 50 }
    }
    
    override var endPoint: String {
        get { return "\(super.endPoint)/explore" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.get] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
