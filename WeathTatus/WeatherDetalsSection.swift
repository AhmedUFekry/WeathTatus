//
//  WeatherDetalsSection.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI

struct WeatherDetalsSection: View {
    var visibility : Int = 10
    var humidity : Int = 36
    var feelsLike : Int = 16
    var pressure : Double = 1.021
    var isDay:Bool
    var body: some View {

        VStack{
            HStack{
                VStack{
                   Text("VISIBILITY")
                        .font(.system(size: 18))
                        .padding(.bottom)
                        .foregroundColor(isDay ? .black : .white)
                        .bold()
                    HStack{
                        Text(visibility.description)
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                        Text("km")
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                    }
                }
                Spacer(minLength: 20)
                VStack{
                   Text("HUMIDITY")
                        .font(.system(size: 18))
                        .bold()
                        .padding(.bottom)
                        .foregroundColor(isDay ? .black : .white)
                    
                    HStack{
                        Text(humidity.description)
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)
                        Text("%")
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                    }
                }
            }
            Spacer(minLength: 20)
            HStack{
                VStack{
                   Text("FEELS LIKE")
                        .font(.system(size: 18))
                        .bold()
                        .padding(.bottom)
                        .foregroundColor(isDay ? .black : .white)

                    HStack{
                        Text(feelsLike.description)
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                        Text("°")
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                    }
                }
                Spacer(minLength: 20)
                VStack{
                   Text("PRESSURE")
                        .font(.system(size: 18))
                        .bold()
                        .padding(.bottom)
                        .foregroundColor(isDay ? .black : .white)

                    HStack{
                        Text(pressure.description)
                            .font(.title)
                            .foregroundColor(isDay ? .black : .white)

                    }
                }
            }
        }.frame(width: 270 , height: 200)
        
    }
}

struct WeatherDetalsSection_Previews: PreviewProvider {
    static var previews: some View {
        WeatherDetalsSection(isDay: true)
    }
}
