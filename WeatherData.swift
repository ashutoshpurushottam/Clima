//
//  WeatherData.swift
//  Clima
//
//  Created by Ashutosh Purushottam on 28/12/19.
//  Copyright © 2019 App Brewery. All rights reserved.
//

import Foundation

struct WeatherData : Codable {
    let name: String
    let main: Main
    let weather: [Weather]
}

struct Main: Codable {
    let temp: Double
    let feltTemprature: Double
    
    enum CodingKeys: String, CodingKey {
        case temp
        case feltTemprature = "feels_like"
    }
    
}

struct Weather: Codable {
    let id: Int
    let description: String
}
