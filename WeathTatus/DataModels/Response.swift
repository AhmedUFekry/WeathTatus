

import Foundation
struct Response : Codable {
	let location : Location
	let current : Current
	let forecast : Forecast

	enum CodingKeys: String, CodingKey {

		case location = "location"
		case current = "current"
		case forecast = "forecast"
	}



}
