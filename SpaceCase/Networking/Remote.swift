//
//  Remote.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation
import Alamofire

struct Remote {
  static func request(endpoint: Endpoint, completion: @escaping (Data?, Error?) -> Void) {
    
    guard let endpointURL = endpoint.fullURL else { return }
    Alamofire.request(endpointURL,
                      method: endpoint.method,
                      parameters: endpoint.body,
                      encoding: endpoint.encoding,
                      headers: endpoint.headers)
      .validate(statusCode: 200..<300)
      .responseJSON { response in
        if response.result.isSuccess {
          guard let data = try? JSONSerialization.data(withJSONObject: response.result.value ?? [:]) else {
            completion(nil, nil) // TODO: Implement Custom Errors
            return
          }
          completion(data, nil)
        }
    }
  }
}
