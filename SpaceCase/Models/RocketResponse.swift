//
//  RocketResponse.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation
import Alamofire

struct RocketResponse: Codable {
  var rockets: [Rocket]
}
