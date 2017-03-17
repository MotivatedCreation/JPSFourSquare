//
//  JPSFSVenue.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/**
 https://developer.foursquare.com/docs/responses/venue
 */


class JPSFSVenue: JPSFSResource
{
    enum Role
    {
        case manager
        case employee
    }
    
    enum GroupType
    {
        case checkin
        case venue
    }
    
    /**
        The best known name for this venue.
    */
    internal(set) var name: String!
    
    /**
        An object containing none, some, or all of twitter, phone, and formattedPhone. All are strings.
    */
    internal(set) var contact: [String]!
    
    /**
     An object containing none, some, or all of address (street address),  crossStreet,  city, state, postalCode,  country, lat, lng, and distance. All fields are strings, except for lat, lng, and distance. Distance is measured in meters.
 
     Some venues have their locations intentionally hidden for privacy reasons (such as private residences). If this is the case, the parameter isFuzzed will be set to true, and the lat/lng parameters will have reduced precision.
    */
    //internal(set) var location: String!
    
    /**
        An array, possibly empty, of categories that have been applied to this venue. One of the categories will have a field primary indicating that it is the primary category for the venue. For the complete set of categories, see venues/categories.
    */
    internal(set) var categories: [JPSFSCategory]!
    
    /**
        Boolean indicating whether the owner of this business has claimed it and verified the information.
    */
    internal(set) var verified: Bool!
    
    /**
        Contains checkinsCount (total checkins ever here), usersCount (total users who have ever checked in here), and tipCount (number of tips here).
    */
    //internal(set) var stats: String!
    
    /**
        URL of the venue's website, typically provided by the venue manager.
    */
    internal(set) var url: URL?
    
    /**
        Contains the hours during the week that the venue is open along with any named hours segments in a human-readable format. For machine readable hours see venues/hours
    */
    //internal(set) var hours: String?
    
    /**
        Optional Contains the hours during the week when people usually go to the venue. For machine readable hours see venues/hours.
    */
    //internal(set) var popular: String?
    
    /**
        An object containing url and mobileUrl that display the menu information for this venue.
    */
    //internal(set) var menu: String?
    
    /**
        An object containing the price tier from 1 (least pricey) - 4 (most pricey) and a message describing the price tier.
    */
    //internal(set) var price: Int?
    
    /**
        Numerical rating of the venue (0 through 10). Returned as part of an explore result, excluded in search results. Not all venues will have a rating.
    */
    internal(set) var rating: Int?
    
    /**
        If v >= 20120121, a dictionary containing count and items array of specials at this venue. Otherwise, an array, possibly empty, of specials at this venue.
    */
    internal(set) var specials: [JPSFSSpecial]!
    
    /**
        Information about who is here now. If present, there is always a count, the number of people here. If viewing details and there is a logged-in user, there is also a groups field with friends and others as types.
    */
    internal(set) var hereNow: String?
    
    /**
        The manager's internal identifier for the venue.
    */
    internal(set) var storeId: String?
    
    /**
        Description of the venue provided by venue owner.
    */
    internal(set) var description: String?
    
    /**
        Seconds since epoch when the venue was created.
    */
    internal(set) var createdAt: TimeInterval!
    
    /**
        user is the compact user who is the mayor (absent if there is no mayor), and count is the number of times they have checked in within the last 60 days.
    */
    //internal(set) var mayor: String!
    
    /**
        Contains the total count of tips and groups with friends and others as groupTypes. Groups may change over time.
    */
    internal(set) var tips: String!
    
    /**
        A grouped response of lists that contain this venue. Contains a summary string representing the acting user's relationship to these lists. If an acting user is present, groups may include todos, created, edited, followed, friends, and others. If this venue is on the acting user's todo list, those items will be included in the todos group.
    */
    //internal(set) var listed: String!
    
    /**
        An array of string tags applied to this venue.
    */
    internal(set) var tags: String!
    
    /**
        Contains count of the number of times the acting user has been here. Absent if there is no acting user.
    */
    internal(set) var beenHere: Int?
    
    /**
        A short URL for this venue, e.g. http://4sq.com/Ab123D
    */
    internal(set) var shortUrl: URL!
    
    /**
        The canonical URL for this venue, e.g. https://foursquare.com/v/foursquare-hq/4ab7e57cf964a5205f7b20e3
    */
    internal(set) var canonicalUrl: URL!
    
    /**
        An array of specials near this venue.
    */
    internal(set) var specialsNearby: [JPSFSSpecial]!
    
    /**
        A count and groups of photos for this venue. Group types are checkin and venue. Not all items will be present.
    */
    internal(set) var photos: String!
    
    /**
        The count of users who have liked this venue, and  groups containing any friends and others who have liked it. The groups included are subject to change.
    */
    //internal(set) var likes: String!
    
    /**
        Indicates if the current user has liked this venue.
    */
    internal(set) var like: String!
    
    /**
        Indicates if the current user has disliked this venue.
    */
    internal(set) var dislike: Bool!
    
    /**
        List of phrases commonly seen in this venue's tips, as well as a sample tip snippet and the number of tips this phrase appears in.
    */
    internal(set) var phrases: String!
    
    /**
        Attributes associated with the venue, such as price tier, whether the venue takes reservations, and parking availability.
    */
    internal(set) var attributes: [String]?
    
    /**
     Present if and only if the current user has at least one assigned role for this venue. The value is a list of all of the current user's assigned roles for this venue. Possible values for each element of the list are manager and employee. Subject to change as additional roles may be defined.
    */
    internal(set) var roles: [Role]?
    
    /**
     Present only for venues returned in Explore search results.
     
     A boolean indicating that the venue is outside the radius specified by the original query. Explore may return venues outside the requested radius in the case of a high-quality "exact match" to the query (e.g. if the user searches for [ace bar] in Brooklyn, we will still find the popular Ace Bar venue in Manhattan and return it with outsideRadius: true).
     */
    internal(set) var outsideRadius = false
    
    /**
     Present only for venues returned in Explore search results.
     
     A boolean indicating that the venue name was a strong match for the specified query (either it was an exact string match, or there was a large overlap between the query and the given venue's name).
     */
    internal(set) var exactMatch = false
    
    /**
        Optional
        user is the branded page associated with the venue. If the venue is part of a chain, this will be a user object referring to the chain. For venues that are being managed and not part of a chain, this will contain a user object that uniquely refers to this venue.
    */
    internal(set) var page: JPSFSUser?
    
    // MARK: - Initialization Methods
    
    // MARK: - Actions
    
    func claim()
    {
        
    }
    
    /**func dislike()
    {
        
    }*/
    
    func flag()
    {
        
    }
    
    func proposeEdit()
    {
        
    }
    
    /**func like()
    {
        
    }*/
    
    func setRole()
    {
        
    }
    
    func edit()
    {
        
    }
    
    func setSingleLocation()
    {
        
    }
    
    // MARK: -
}
