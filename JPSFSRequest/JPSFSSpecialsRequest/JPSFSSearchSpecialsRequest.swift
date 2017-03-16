//
//  JPSFSSearchSpecialsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation
import CoreLocation


class JPSFSAddSpecialsRequest: JPSFSSpecialsRequest
{
    /*
        Required. Latitude and longitude to search near.
    */
    var ll: CLLocation2D!
    
    /*
        Limit results to venues within this many meters of the specified location. Defaults to a city-wide area.
     */
    var radius: Int?
    
    /*
        Accuracy of latitude and longitude, in meters.
     */
    var llAcc: Float?
    
    /*
        Altitude of the user's location, in meters.
     */
    var alt: Float?
    
    /*
        Accuracy of the user's altitude, in meters.
     */
    var altAcc: Float?
    
    /*
        Number of results to return, up to 50.
     */
    var limit: Int?
    
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
        get { return [.foursquare] }
    }
}
