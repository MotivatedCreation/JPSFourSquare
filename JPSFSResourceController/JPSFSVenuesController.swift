//
//  JPSFSVenuesCollection.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/18/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


@objc(JPSFSVenuesController)
class JPSFSVenuesController: JPSFSResourceController
{
    func venue(for id: String, completion: @escaping (_: JPSFSVenue) -> ())
    {
        let request = JPSFSRequestVenues()
        request.venueID = id
        
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venue: JPSFSVenue = self.parse(object: (json["venue"] as! [String: String]))
            completion(venue)
        })
    }
    
    func search(request: JPSFSGeneralRequestVenueSearch, completion: @escaping (_: [JPSFSVenue]) -> ())
    {
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venues: [JPSFSVenue] = self.parse(array: (json["venues"] as! [[String: String]]))
            completion(venues)
        })
    }
    
    func suggestCompletion(request: JPSFSGeneralRequestVenueSuggestCompletion, completion: @escaping (_: [JPSFSVenue]) -> ())
    {
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venues: [JPSFSVenue] = self.parse(array: (json["venues"] as! [[String: String]]))
            completion(venues)
        })
    }
    
    func categories(completion: @escaping (_ categories: [JPSFSCategory]) -> ())
    {
        let request = JPSFSGeneralRequestVenueCategories()
        
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let categories: [JPSFSCategory] = self.parse(array: (json["categories"] as! [[String: String]]))
            completion(categories)
        })
    }
    
//    func timeSeries(request: JPSFSGeneralRequestVenueTimeSeries, completion: @escaping (_: [JPSFSVenueTimeSeries]) -> ())
//    {
//        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
//            
//            let timeseries: [JPSFSTimeSeries] = self.parse(array: (json["timeseries"] as! [[String: String]]))
//            completion(timeseries)
//        })
//    }
    
    func trending(request: JPSFSGeneralRequestVenueTrending, completion: @escaping (_: [JPSFSVenue]) -> ())
    {
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venues: [JPSFSVenue] = self.parse(array: (json["venues"] as! [[String: String]]))
            completion(venues)
        })
    }
    
//    func explore(request: JPSFSGeneralRequestVenueExplore, completion: (_ venue: JPSFSVenue) -> ())
//    {
//        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> Void in
//            completion(data)
//        })
//    }
    
    func add(request: JPSFSGeneralRequestVenueAdd, completion: @escaping (_: JPSFSVenue) -> ())
    {
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venue: JPSFSVenue = self.parse(object: (json["venue"] as! [String: String]))
            completion(venue)
        })
    }
    
    func managed(request: JPSFSGeneralRequestVenueManaged, completion: @escaping (_: [JPSFSVenue]) -> ())
    {
        self.api.process(request: request, completion: { (json: JPSRESTClient.JSON) -> () in
            
            let venues: [JPSFSVenue] = self.parse(array: (json["venues"] as! [[String: String]]))
            completion(venues)
        })
    }
}
