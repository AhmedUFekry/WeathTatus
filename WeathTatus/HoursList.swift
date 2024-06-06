//
//  HoursList.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI

struct HoursList: View {
     var background:String
     var hourArr : [Hour]
     var isDayy: Bool
    var body: some View {
        ZStack {
            Image(background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack{
                Text("Temp in 24 Hours")
                    .font(.system(size: 40))
                    .bold()
                    .foregroundColor(isDayy ? .black : .white)

                ScrollView {
                    VStack {
                        ForEach(0..<24) { index in
                            
                            HourlyCell(imgURL: hourArr[index].condition.icon, time: "\(index):00" , temp: Int(hourArr[index].temp_c), isDay: isDayy, status: hourArr[index].condition.text)
                        }
                    }
                }
            }
        }
    }
}



struct HoursList_Previews: PreviewProvider {
    static var previews: some View {
        
        HoursList(background: "",hourArr: [] , isDayy: true)
    }
}
