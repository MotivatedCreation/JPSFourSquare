//
//  FSClient.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation

class JPSFSClient
{
    static let ClientID = ""
    static let Secret = ""
    static let BaseURL = ""
    
    enum EndPoints: String
    {
        case users = "users"
        case venues = "venues"
        case venueGroups = "venuegroups"
        case checkIns = "checkins"
        case tips = "tips"
        case lists = "lists"
        case updates = "updates"
        case photos = "photos"
        case settings = "settings"
        case specials = "specials"
        case events = "events"
        case pages = "pages"
        case pageUpdates = "pageupdates"
        case multi = "multi"
        
        static let allValues = [users.rawValue, venues.rawValue, venueGroups.rawValue, checkIns.rawValue, tips.rawValue, lists.rawValue, updates.rawValue, photos.rawValue, settings.rawValue, specials.rawValue, events.rawValue, pages.rawValue, pageUpdates.rawValue, multi.rawValue]
    }
    
    let restClient: JPSRESTClient!
    
    init ()
    {
        self.restClient = JPSRESTClient(withClientID: JPSFSClient.ClientID, clientSecret: JPSFSClient.Secret, baseURL: JPSFSClient.BaseURL, endPoints: EndPoints.allValues)
    }
    
    deinit {
        
    }
}
