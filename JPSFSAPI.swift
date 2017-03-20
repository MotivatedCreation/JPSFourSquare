//
//  FSClient.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 3/15/17.
//  Copyright © 2017 Jonathan Sullivan. All rights reserved.
//

import Foundation


@objc(JPSFSAPI)
class JPSFSAPI: NSObject
{
    typealias ProcessRequestCompletionHandler = ((_ json: JPSRESTClient.JSON) -> Void)
    
    static let BaseURL = "https://api.foursquare.com/v2/"
    
    let clientID: String!
    let clientSecret: String!
    
    fileprivate let restClient: JPSRESTClient!
    fileprivate var processRequestCompletionHandler: ProcessRequestCompletionHandler?
    
    fileprivate var previousMetaData: JPSFSRequestResponseMeta?
    fileprivate var previousHTTPStatusResponse: HTTPURLResponse?
    
    init(clientID id: String, clientSecret secret: String)
    {
        clientID = id
        clientSecret = secret
        restClient = JPSRESTClient(withClientID: self.clientID, clientSecret: self.clientSecret, baseURL: JPSFSAPI.BaseURL)
        
        super.init()
        
        self.restClient.delegate = self
    }
    
    func process(request: JPSFSRequest, completion: @escaping ProcessRequestCompletionHandler)
    {
        self.processRequestCompletionHandler = completion
        
        let urlRequest = request.urlRequest
        
        switch request.httpMethod
        {
        case .get:
            self.restClient.get(request: urlRequest)
            
        case .post:
            self.restClient.post(request: urlRequest)
            
        case .put:
            self.restClient.put(request: urlRequest)
            
        case .delete:
            self.restClient.delete(request: urlRequest)
        }
    }
}

extension JPSFSAPI: JPSRESTClientDelegate
{
    func restClient(restClient: JPSRESTClient, requestDidReturnWithHTTPWithResponse response: HTTPURLResponse, json: JPSRESTClient.JSON, error: Error?)
    {
        self.previousHTTPStatusResponse = response
        
        guard let completionHandler = self.processRequestCompletionHandler else { return }
        
        let metaData = (json["meta"] as! [String: String])
        self.previousMetaData = JPSFSRequestResponseMeta(backingStore: metaData)
        
        let response = (json["response"] as! JPSRESTClient.JSON)
        completionHandler(response)
    }
}
