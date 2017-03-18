//
//  JPSFSAspectRequestTipSaves.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/16/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSAspectRequestTipSaves: JPSFSAspectRequestTip
{
    override var endPoint: String {
        get { return "\(self.endPoint)/\(self.id)/saves" }
    }
    
    override var modesSupported: [Mode] {
        get { return [.foursquare] }
    }
}
