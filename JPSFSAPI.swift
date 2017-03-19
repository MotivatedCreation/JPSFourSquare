//
//  FSClient.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation

class JPSFSAPI: JPSRESTClient
{
    static let BaseURL = ""
    
    private static let ClientID = ""
    private static let ClientSecret = ""
    
    let users = JPSFSUsersController()
    let venues = JPSFSVenuesController()
    let venuesGroups = JPSFSVenueGroupsController()
    let checkins = JPSFSCheckinsController()
    let tips = JPSFSTipsController()
    let lists = JPSFSListsController()
    let updates = JPSFSUpdatesController()
    let photos = JPSFSPhotosController()
    let settings = JPSFSSettingsController()
    let specials = JPSFSSpecialsController()
    let events = JPSFSEventsController()
    let pageUpdates = JPSFSPageUpdatesController()
}
