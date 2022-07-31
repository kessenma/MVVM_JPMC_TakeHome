//
//  ViewModel.swift
//  MVVM_JPMC_TakeHome
//
//  Created by Kyle Essenmacher on 7/31/22.
//

import Foundation

final class SchoolsViewModel: ObservableObject {
    
    @Published private(set) var schools: [School] = []
    @Published private(set) var isLoading = false

    func fetchSchools() async throws {

        isLoading = true
        defer { isLoading = false }
        
        let (data, _) = try await URLSession.shared.data(from: URL(string: "https://data.cityofnewyork.us/resource/f9bf-2cp4.json")!)
        
        let decoder = JSONDecoder()
        self.schools = try decoder.decode([School].self, from: data)
    }
}
