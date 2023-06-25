//
//  ContentView.swift
//  LetsTravel
//
//  Created by Ani Adhikary on 03/06/23.
//

import SwiftUI

struct ContentView: View {
    @State private var cities = CityDataModel.data
    
    var body: some View {
        NavigationView {
            List {
                ForEach(cities, id: \.self) { city in
                    HStack {
                        Text(city.cityName)
                        Spacer()
                        Text(city.country)
                    }
                }
                .onDelete(perform: deleteCity)
            }
            .navigationTitle(AppConstants.letsTravelTitle)
            .navigationBarItems(trailing: EditButton())
        }
    }
    
    func deleteCity(at offsets: IndexSet) {
        cities.remove(atOffsets: offsets)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
