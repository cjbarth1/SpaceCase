//
//  Service.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation
import Alamofire

protocol Endpoint {
  var path: String { get }
  var method: HTTPMethod { get }
  var headers: HTTPHeaders { get }
  var body: Parameters { get }
  var baseURL: String { get }
  var fullURL: URL? { get }
  var encoding: ParameterEncoding { get }
}

extension Endpoint {
  var baseURL: String {
    return "https://launchlibrary.net/1.3/"
  }
  
  var fullURL: URL? {
    return URL(string: "\(baseURL)\(path)")
  }
  
  var encoding: ParameterEncoding {
    return method == .get ? URLEncoding.default : JSONEncoding.default
  }
  
  var headers: HTTPHeaders {
    return ["Accept": "application/json"]
  }
}
