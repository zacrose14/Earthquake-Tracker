//
//  ViewController.swift
//  Earthquake Tracker
//
//  Created by Zachary Rose on 2/24/18.
//  Copyright © 2018 Zachary Rose. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        getQuakeData()
    
    }

    func getQuakeData() {
        let request = "https://earthquake.usgs.gov/fdsnws/event/1/query?format=geojson&starttime=2016-01-01&endtime=2016-01-31&minmag=6&limit=10"
        
        guard let urlRequest = URL(string: request) else { return }
        
        let task = URLSession.shared.dataTask(with: urlRequest) { (data, response, error) in
            if error == nil {
                
                // Parse the data
                if let data = data {
                    
                    let parsedResult: [String: AnyObject]
                    
                    do {
                        parsedResult = try JSONSerialization.jsonObject(with: data, options: []) as! [String:AnyObject]
                        
                    } catch {
                        print("Could not parse the data as JSON: '\(data)'")
                        return
                    }
                    
                    // double check the JSON structure, the typecast was incorrect
                    if let quakeDic = parsedResult["features"] as? [[String:AnyObject]] {
                        print(quakeDic)
                    }

                }
            }
            else {
                print("There was some error")
            }
        }
        
        task.resume()
    }

}

