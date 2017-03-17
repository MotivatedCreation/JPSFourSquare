//
//  JPSFSAddPhotosRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSGeneralRequestPhotoAdd: JPSFSGeneralRequestPhoto
{
    enum Broadcast: String
    {
        case twitter = "twitter"
        case facebook = "facebook"
    }
    
    /*
        the ID of a checkin owned by the user.
    */
    var checkinID: String?
    
    /*
        the ID of a tip owned by the user.
     */
    var tipID: String?
    
    /*
        the ID of a venue, provided only when adding a public photo of the venue in general, rather than a photo for a private checkin, tip, or page update.
     */
    var venueID: String?
    
    /*
        the ID of a page, provided only when adding a photo that will be in an update for that page (no other ids should be specified).
     */
    var pageID: String?
    
    /*
        Whether to broadcast this photo. Send twitter if you want to send to twitter, facebook if you want to send to facebook, or twitter,facebook if you want to send to both.
     */
    var broadcast: [Broadcast]?
    
    /*
        When the checkinId is also provided (meaning this is a photo attached to a checkin), this parameter allows for making the photo public and viewable at the venue. Valid values are 1 and 0 (default).
     
        Note that photos attached to venues, tips, and pages (updates) are always public.
     */
    var `public`: Bool? = 0
    
    /*
        Latitude and longitude of the user's location.
     */
    var ll: CLLocation2D?
    
    /*
        Accuracy of the user's latitude and longitude, in meters.
     */
    var llAcc: Float?
    
    /*
        Altitude of the user's location, in meters.
     */
    var alt: Float?
    
    /*
        Vertical accuracy of the user's location, in meters.
     */
    var altAcc: Float?
    
    /*
        A link for more details about the photo. This page will be opened in an embedded web view in the foursquare application, unless contentId is specified and a native link handler is registered and present. We support the following URL schemes: http, https, foursquare, mailto, tel, and sms.
     */
    var postUrl: URL?
    
    /*
        Identifier for the photo post to be used in a native link, up to 50 characters. A checkinId and postUrl must also be specified in the request.
     */
    var postContentID: String?
    
    /*
        Text for the photo post, up to 200 characters. A checkinId must also be specified in the request.
     */
    var postText: String?
    
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
        get { return [.foursquare, .swarm] }
    }
}
