//
//  JPSRESTClient.swift
//  Just Bucket
//
//  Created by Jonathan Sullivan on 12/28/16.
//  Copyright © 2016 Jonathan Sullivan. All rights reserved.
//

import Foundation


@objc protocol JPSRESTClientDelegate
{
    func restClient(didCompleteWithHTTPWithResponse: HTTPURLResponse, error: Error?)
}

@objc class JPSRESTClient: NSObject
{
    enum HTTPMethod: String
    {
        case post = "POST"
        case get = "GET"
        case put = "PUT"
        case delete = "DELETE"
    }
    
    weak var delegate: JPSRESTClientDelegate?
    
    fileprivate let baseURL: String!
    fileprivate let clientID: String!
    fileprivate let endPoints: [String]!
    fileprivate let clientSecret: String!
    
    fileprivate var session: URLSession?
    fileprivate var responsesData = [NSNumber: Data]()
    
    fileprivate let sessionConfiguration: URLSessionConfiguration!
    
    init(withClientID apiClientID: String, clientSecret apiSecret: String, baseURL apiBaseURL: String, endPoints apiEndPoints: [String])
    {
        clientID = apiClientID
        clientSecret = apiSecret
        baseURL = apiBaseURL
        endPoints = apiEndPoints
        
        sessionConfiguration = URLSessionConfiguration.ephemeral
        sessionConfiguration.timeoutIntervalForRequest = 60
        sessionConfiguration.timeoutIntervalForResource = 120
        sessionConfiguration.httpMaximumConnectionsPerHost = 1
        
        super.init()
        
        self.session = URLSession(configuration: sessionConfiguration, delegate: self, delegateQueue: OperationQueue.main)
    }
    
    deinit {
        self.session?.invalidateAndCancel()
    }
    
    // MARK: Helper Methods
    
    func constructBaseRequest() -> URLRequest
    {
        let urlForRequest = URL(string: self.baseURL)
        let urlRequest = URLRequest(url: urlForRequest!)
        
        return urlRequest
    }
    
    // MARK: CRUD Operations
    
    func request(for HTTPMethod: HTTPMethod, headerFieldsAndValues: [String: String]?) -> URLRequest
    {
        var request = self.constructBaseRequest()
        request.httpMethod = HTTPMethod.rawValue
        
        if let _ = headerFieldsAndValues
        {
            for (headerField, value) in headerFieldsAndValues! {
                request.addValue(value, forHTTPHeaderField: headerField)
            }
        }
        
        return request
    }
    
    func post(headerFieldsAndValues: [String: String]?)
    {
        let request = self.request(for: .get, headerFieldsAndValues: headerFieldsAndValues)
        let dataTask = self.session?.dataTask(with: request)
        dataTask?.resume()
    }
    
    func get(headerFieldsAndValues: [String: String]?)
    {
        let request = self.request(for: .post, headerFieldsAndValues: headerFieldsAndValues)
        let dataTask = self.session?.dataTask(with: request)
        dataTask?.resume()
    }
    
    func put(headerFieldsAndValues: [String: String]?)
    {
        let request = self.request(for: .put, headerFieldsAndValues: headerFieldsAndValues)
        let dataTask = self.session?.dataTask(with: request)
        dataTask?.resume()
    }
    
    func delete(headerFieldsAndValues: [String: String]?)
    {
        let request = self.request(for: .delete, headerFieldsAndValues: headerFieldsAndValues)
        let dataTask = self.session?.dataTask(with: request)
        dataTask?.resume()
    }
}

extension JPSRESTClient: URLSessionDelegate
{
    func urlSession(_ session: URLSession, didBecomeInvalidWithError error: Error?)
    {
        if error != nil {
            print("[\(#file) \(#function): \(#line)] \(error)")
        }
    }
}

extension JPSRESTClient: URLSessionDataDelegate
{
    func urlSession(_ session: URLSession, task: URLSessionTask, didCompleteWithError error: Error?)
    {
        guard let urlResponse = task.response else { return }
        
        let httpURLResponse = (urlResponse as! HTTPURLResponse)
        let headerFields = (httpURLResponse.allHeaderFields as? [String: String])
        
        let response = HTTPURLResponse(url: urlResponse.url!, statusCode: HTTPStatusCode(rawValue: httpURLResponse.statusCode)!, httpVersion: nil, headerFields: headerFields)
        
        self.delegate?.restClient(didCompleteWithHTTPWithResponse: response!, error: error)
    }
    
    func urlSession(_ session: URLSession, dataTask: URLSessionDataTask, didReceive data: Data)
    {
        let taskIdentifier = NSNumber(value: dataTask.taskIdentifier)
        var receivedData = self.responsesData[taskIdentifier]
        
        if receivedData == nil
        {
            receivedData = Data()
            self.responsesData[taskIdentifier] = receivedData
        }
        
        receivedData!.append(data)
    }
}


