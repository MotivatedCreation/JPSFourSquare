//
//  JPSFSAddSpecialsRequest.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAddSpecialsRequest: JPSFSSpecialsRequest
{
    /*
        A name for the special.
    */
    var name: String?
    
    /*
        Required. Maximum length of 200 characters.
     */
    var text: String!
    
    /*
        Maximum length of 200 characters. Fine print, shown in small type on the special detail page.
     */
    var finePrint: String?
    
    /*
        Specifier for special types.
     */
    var count1: Int?
    
    /*
        Required. The type of special.
     
        frequency
            Check-in Special if count1 is 1; otherwise a Loyalty Special
            unlocked every count1 check-ins
     
        count
            Newbie Special if count1 is 1; otherwise a Loyalty Special
            unlocked on the count1th check-in (all-time)
     */
    var type: String!
    
    /*
        Maximum length of 16 characters. Internal id in your 3rd party system.
     */
    var offerID: Int?
    
    /*
        The amount of money the user must spend to use this special in dollars and cents. For example, 5.50 meaning 5 dollars and 50 cents.
     */
    var cost: Float?
    
    override var endPoint: String {
        get { return "\(super.endPoint)/add" }
    }
    
    override var validHTTPMethods: [JPSRESTClient.HTTPMethod] {
        get { return [.post] }
    }
    
    override var requiresActingUser: Bool {
        get { return true }
    }
    
    var userRestrictions: [UserRestrictions] {
        get { return [.mustBeVenueManager] }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
