//
//  JPSFSPhoto.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


/*
  https://developer.foursquare.com/docs/responses/photo
*/


class JPSFSPhoto: JPSFSUserResource
{
    enum Visibility
    {
        case `public`
        case friends
        case `private`
    }
    
    /*
        Seconds since epoch when this photo was created.
     */
    internal(set) var createdAt: TimeInterval!
    
    /*
        Start of the URL for this photo.
     */
    internal(set) var prefix: String!
    
    /*
        Ending of the URL for this photo.
     
        To assemble a resolvable photo URL, take prefix + size + suffix, e.g. https://irs0.4sqi.net/img/general/300x500/2341723_vt1Kr-SfmRmdge-M7b4KNgX2_PHElyVbYL65pMnxEQw.jpg.
     
        size can be one of the following, where XX or YY is one of 36, 100, 300, or 500.
        XXxYY
     
        original: the original photo's size
     
        capXX: cap the photo with a width or height of XX (whichever is larger). Scales the other, smaller dimension proportionally
     
        widthXX: forces the width to be XX and scales the height proportionally
     
        heightYY: forces the height to be YY and scales the width proportionally
     */
    internal(set) var suffix: String!
    
    /*
        Can be one of "public" (everybody can see, including on the venue page), "friends" (only the poster's friends can see), or "private" (only the poster can see)
     */
    internal(set) var visibility: Visibility!
    
    /*
        If present, the name and url for the application that created this photo.
     */
    //internal(set) var source: [String]?
    
    /*
        If the venue is not clear from context, then a compact venue is present.
     */
    internal(set) var venue: JPSFSVenue?
    
    /*
        If the tip is not clear from context, then a compact tip is present.
     */
    internal(set) var tip: JPSFSTip?
    
    /*
        If the checkin is not clear from context, then a compact checkin is present.
     */
    internal(set) var checkin: JPSFSCheckin?
}
