//
//  ViewController.swift
//  SpaceCase
//
//  Created by Casey Barth on 2/10/18.
//  Copyright © 2018 Casey. All rights reserved.
//

import UIKit
import Alamofire

class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    RocketRequest.getRocket(rocketID: 1) { rocket in
      print(rocket)
    }
  }


  override func didReceiveMemoryWarning() {
    super.didReceiveMemoryWarning()
    // Dispose of any resources that can be recreated.
  }


}

