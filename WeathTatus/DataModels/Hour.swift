/* 
Copyright (c) 2024 Swift Models Generated from JSON powered by http://www.json4swift.com

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.

For support, please feel free to contact me at https://www.linkedin.com/in/syedabsar

*/

import Foundation
struct Hour : Codable {
	let time_epoch : Int
	let time : String
	let temp_c : Double
	let temp_f : Double
	let is_day : Int
	let condition : Condition
	let wind_mph : Double
	let wind_kph : Double
	let wind_degree : Int
	let wind_dir : String
	let pressure_mb : Double
	let pressure_in : Double
	let precip_mm : Double
	let precip_in : Double
	let snow_cm : Double
	let humidity : Int
	let cloud : Int
	let feelslike_c : Double
	let feelslike_f : Double
	let windchill_c : Double
	let windchill_f : Double
	let heatindex_c : Double
	let heatindex_f : Double
	let dewpoint_c : Double
	let dewpoint_f : Double
	let will_it_rain : Int
	let chance_of_rain : Int
	let will_it_snow : Int
	let chance_of_snow : Int
	let vis_km : Double
	let vis_miles : Double
	let gust_mph : Double
	let gust_kph : Double
	let uv : Double

	enum CodingKeys: String, CodingKey {

		case time_epoch = "time_epoch"
		case time = "time"
		case temp_c = "temp_c"
		case temp_f = "temp_f"
		case is_day = "is_day"
		case condition = "condition"
		case wind_mph = "wind_mph"
		case wind_kph = "wind_kph"
		case wind_degree = "wind_degree"
		case wind_dir = "wind_dir"
		case pressure_mb = "pressure_mb"
		case pressure_in = "pressure_in"
		case precip_mm = "precip_mm"
		case precip_in = "precip_in"
		case snow_cm = "snow_cm"
		case humidity = "humidity"
		case cloud = "cloud"
		case feelslike_c = "feelslike_c"
		case feelslike_f = "feelslike_f"
		case windchill_c = "windchill_c"
		case windchill_f = "windchill_f"
		case heatindex_c = "heatindex_c"
		case heatindex_f = "heatindex_f"
		case dewpoint_c = "dewpoint_c"
		case dewpoint_f = "dewpoint_f"
		case will_it_rain = "will_it_rain"
		case chance_of_rain = "chance_of_rain"
		case will_it_snow = "will_it_snow"
		case chance_of_snow = "chance_of_snow"
		case vis_km = "vis_km"
		case vis_miles = "vis_miles"
		case gust_mph = "gust_mph"
		case gust_kph = "gust_kph"
		case uv = "uv"
	}


}