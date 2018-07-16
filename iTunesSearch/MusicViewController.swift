//
//  ViewController.swift
//  iTunesSearch
//
//  Created by 张小强 on 2018/6/28.
//  Copyright © 2018年 张小强. All rights reserved.
//

import UIKit
import Alamofire
class MusicViewController: UIViewController {

    var dataTask: URLSessionDataTask? = nil
    var results: [Art] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        Alamofire.request("https://itunes.apple.com/search?term=all&limit=25").responseJSON { response in // method defaults to `.get`
            guard response.error == nil else {
                
                return
            }
            let ress = response.result.value as! NSDictionary
            print(ress)
            let decoder = JSONDecoder()
            do {
                let json_data = try JSONSerialization.data(withJSONObject: ress["results"] as Any, options: .prettyPrinted)
                let arts = try decoder.decode([Art].self, from: json_data)
                print(arts)
            } catch {
                print("Error decoding JSON:\(error)")
            }
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

