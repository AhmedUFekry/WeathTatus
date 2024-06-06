//
//  HourlyCell.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI
import Kingfisher
struct HourlyCell: View {
    var imgURL:String
    var time : String
    var temp : Int
    var isDay : Bool
    var status : String
    var body: some View {
        HStack{
            Text("\(time)")
                .font(.title2)
                .bold()
                .background(Color.clear)
                .foregroundColor(isDay ? .black : .white)

            //   .colorInvert()
            KFImage.url(URL(string: "https:\(imgURL)"))
                .resizable()
                .frame(width: 50, height: 50)
                .background(Color.clear)
                .foregroundColor(isDay ? .black : .white)

            
            Text("\(temp)° ")
                .font(.title2)
                .background(Color.clear)
                .bold()
                .foregroundColor(isDay ? .black : .white)

            // .colorInvert()
            
            
            Text("\(status)")
                .font(.title2)
                .background(Color.clear)
                .bold()
                .foregroundColor(isDay ? .black : .white)

            // .colorInvert()
            
            Spacer()
           
            
        }.padding(.leading,50)
    }
}


struct HourlyCell_Previews: PreviewProvider {
    static var previews: some View {
        HourlyCell(imgURL: "//cdn.weatherapi.com/weather/64x64/day/113.png", time: "05:00" , temp: 20 , isDay: true , status: "partlly cloudy")
    }
}
