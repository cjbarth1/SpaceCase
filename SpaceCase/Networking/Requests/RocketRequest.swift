//
//  RocketRequest.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation
import Alamofire

final class RocketRequest {
  static func getRockets() {
    
  }
  
  static func getRocket(rocketID: Int, completion: @escaping (Rocket?) -> Void) {
    Remote.request(endpoint: RocketService.getRocket(id: rocketID)) { (rocketData, error) in
      if let data = rocketData {
        let rocketObject = try? JSONDecoder().decode(RocketResponse.self, from: data)
        completion(rocketObject?.rockets.first)
        return
      }
      completion(nil)
    }
  }
}
