//
//  Rocket.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/11/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import Foundation

struct Rocket: Codable {
  var id: Int
  var name: String
  var configuration: String
  var defaultPads: String
  var wikiURL: String
  var imageURL: String
}
