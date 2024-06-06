//
//  DayCell.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI
import Kingfisher
struct DayCell: View {
    var day : String
    var imgURL : String
    var min : Int
    var max : Int
    var background:String = ""
    var hourArr : [Hour] = []
    var isDay : Bool

    var body: some View {
        NavigationLink(destination: HoursList(background: background , hourArr: hourArr, isDayy: isDay)){ HStack{
            Text(day)
                .frame(width: 150,alignment: .leading)
                .font(.system(size: 20))
                .bold()
                .background(Color.clear)
                .foregroundColor(isDay ? .black : .white)
                

            KFImage.url(URL(string: "https:\(imgURL)"))
                .resizable()
                .frame(width: 50, height: 50)
                .background(Color.clear)
            Text("\(max.description)°")
                .font(.title3)
                .background(Color.clear)
                .foregroundColor(isDay ? .black : .white)
                .bold()


            Text(" - ")
                .font(.title)
                .foregroundColor(isDay ? .black : .white)
                .bold()


            Text("\(min.description)°")
                .font(.title3)
                .foregroundColor(isDay ? .black : .white)
                .bold()


        }
    }

    }
}

struct DayCell_Previews: PreviewProvider {
    static var previews: some View {
        DayCell(day: "After tomoroow",imgURL: "//cdn.weatherapi.com/weather/64x64/day/113.png", min: 7, max: 20 , isDay: true)
    }
}
