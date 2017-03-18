//
//  JPSFSComment.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


class JPSFSComment
{
    /**
        The text of the comment, up to 200 characters.
    */
    var text: String?
    
    /**
        Mentions in your check-in. This parameter is a semicolon-delimited list of mentions. A single mention is of the form "start,end,userid", where start is the index of the first character in the shout representing the mention, end is the index of the first character in the shout after the mention, and userid is the userid of the user being mentioned. Character indices in shouts are 0-based.
    */
    var mentions: String?
}
