//
//  ContentView.swift
//  WeathTatus
//
//  Created by A7med Fekry on 17/05/2024.
//

import SwiftUI
import MapKit
import CoreLocation

struct ContentView: View {
    @State private var response : Response!
    @State private var background:String = ""
    @ObservedObject var locationManager = LocationManager()
    @State var isDayy : Bool


   // @StateObject
    var body: some View { NavigationView {
        ZStack {
            Image(background)
                .resizable()
                .scaledToFill()
                .ignoresSafeArea()
            VStack {
                Spacer()
                //, \(response?.location.country ?? " ")
                CurrentLocationSection(location: "\(response?.location.name ?? "")", imgURL: response?.current.condition.icon ?? "", temp: response?.current.temp_c ?? 0, status: response?.current.condition.text ?? " ", h: response?.forecast.forecastday[0].day.maxtemp_c ?? 0 , L: response?.forecast.forecastday[0].day.mintemp_c ?? 0, isDay: isDayy )
                   // .padding(.top)
                
                
                
                Section(header: Text("3-Day Forecast").foregroundColor(isDayy ? .black : .white).bold()) {
                    DayCell(day: "Today", imgURL: response?.forecast.forecastday[0].day.condition.icon ?? "", min: Int(response?.forecast.forecastday[0].day.mintemp_c ?? 0), max: Int(response?.forecast.forecastday[0].day.maxtemp_c ?? 0),background: self.background , hourArr: response?.forecast.forecastday[0].hour ?? [], isDay: isDayy).bold()
                    DayCell(day: "Tomorrow",imgURL: response?.forecast.forecastday[1].day.condition.icon ?? "",min: Int(response?.forecast.forecastday[1].day.mintemp_c ?? 0), max: Int(response?.forecast.forecastday[1].day.maxtemp_c ?? 0),background: self.background , hourArr: response?.forecast.forecastday[1].hour ?? [], isDay: isDayy).bold()
                    DayCell(day: "After tomorrow",imgURL: response?.forecast.forecastday[2].day.condition.icon ?? "", min: Int(response?.forecast.forecastday[2].day.mintemp_c ?? 0), max: Int(response?.forecast.forecastday[2].day.maxtemp_c ?? 0),background: self.background , hourArr: response?.forecast.forecastday[2].hour ?? [], isDay: isDayy)
                        .bold()
                    
                }.background(Color.clear)
                
                
                WeatherDetalsSection(visibility: Int(response?.current.vis_km ?? 0), humidity: Int(response?.current.humidity ?? 0), feelsLike: Int(response?.current.feelslike_c ?? 0), pressure: response?.current.pressure_mb ?? 0.0, isDay: isDayy)
                
                Spacer()
                
            }
        }
        
    }.onAppear {
        // Request location authorization and start location updates
        locationManager.requestAuthorization()
        locationManager.locationManager.startUpdatingLocation()
    }
    /*.onChange(of: locationManager.authorizationStatus) { _ in
        // If authorization status changes, request data again
        fetchData()
    }*/
    .onChange(of: locationManager.lastKnownLocation) { _ in
        // If location changes, request data again
        fetchData()
    }
    }
     func fetchData() {
         Network.fetchDataFromJson(location: "\(locationManager.lastKnownLocation?.coordinate.latitude ?? 33.33),\(locationManager.lastKnownLocation?.coordinate.longitude ?? 44.44)") { result in
            if let response = result {
               // print(result!)
                print("\(String(describing: locationManager.lastKnownLocation?.coordinate.latitude)),\(locationManager.lastKnownLocation?.coordinate.longitude)++++++")
                if(response.current.is_day == 0){
                    background = "day1"
                    isDayy = false
                }else{
                    background = "night"
                    isDayy = false

                }
                self.response = result!
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(isDayy: true)
    }
}
