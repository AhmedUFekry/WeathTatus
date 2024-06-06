//
//  CurrentLocationSection.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI
import Kingfisher
struct CurrentLocationSection: View {
    var location : String
    var imgURL : String
    var temp : Double
    var status : String
    var h : Double
    var L : Double
    var isDay : Bool
    var body: some View {
        
        VStack{
            Text(location)
                .font(.system(size: 30))
                .bold()
                .foregroundColor(isDay ? .black : .white)

            HStack{
                Text("\(Int(temp).description)°")
                    .font(.system(size: 50))
                    .foregroundColor(isDay ? .black : .white)


            }
            Text(status)
                .font(.title)
                .foregroundColor(isDay ? .black : .white)

            HStack{
                Text("H: \(Int(h).description)°")
                    .font(.title)
                    .foregroundColor(isDay ? .black : .white)

                Text(" ")
                    .font(.title)
                    .foregroundColor(isDay ? .black : .white)

                Text("L: \(Int(L).description)°")
                    .font(.title)
                    .foregroundColor(isDay ? .black : .white)

            }
            KFImage.url(URL(string: "https:\(imgURL)"))
                .resizable()
                .scaledToFit()
                .frame(width: 100, height: 100)
        }
    }
}

struct CurrentLocationSection_Previews: PreviewProvider {
    static var previews: some View {
        CurrentLocationSection(location: "Suez",imgURL: "//cdn.weatherapi.com/weather/64x64/day/113.png", temp: 21, status: "Cloudy", h: 16, L: 16 , isDay: true)
    }
}
