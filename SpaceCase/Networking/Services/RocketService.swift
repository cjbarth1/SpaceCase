//
//  RocketService.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation
import Alamofire

enum RocketService: Endpoint {
  case getRockets
  case getRocket(id: Int)
  
  var path: String {
    switch self {
    case .getRockets: return "rocket"
    case let .getRocket(id): return "rocket/\(id)"
    }
  }
  
  var body: Parameters { return [:] }
  
  var method: HTTPMethod {
    return .get
  }
}
